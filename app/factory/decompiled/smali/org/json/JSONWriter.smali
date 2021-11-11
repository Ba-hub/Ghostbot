.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/json/JSONWriter;->comma:Z

    .line 98
    move-object v2, v0

    const/16 v3, 0x69

    iput-char v3, v2, Lorg/json/JSONWriter;->mode:C

    .line 99
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Lorg/json/JSONObject;

    iput-object v3, v2, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    .line 100
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/json/JSONWriter;->top:I

    .line 101
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    .line 102
    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 112
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Null pointer"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONWriter;->mode:C

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONWriter;->mode:C

    const/16 v4, 0x61

    if-ne v3, v4, :cond_4

    .line 116
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lorg/json/JSONWriter;->comma:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONWriter;->mode:C

    const/16 v4, 0x61

    if-ne v3, v4, :cond_2

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 119
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONWriter;->mode:C

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_3

    .line 124
    move-object v3, v0

    const/16 v4, 0x6b

    iput-char v4, v3, Lorg/json/JSONWriter;->mode:C

    .line 126
    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/json/JSONWriter;->comma:Z

    .line 127
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 120
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 121
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 129
    :cond_4
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Value out of sequence."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-char v4, v4, Lorg/json/JSONWriter;->mode:C

    move v5, v1

    if-eq v4, v5, :cond_1

    .line 160
    new-instance v4, Lorg/json/JSONException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    const/16 v7, 0x6f

    if-ne v6, v7, :cond_0

    const-string v6, "Misplaced endObject."

    :goto_0
    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v6, "Misplaced endArray."

    goto :goto_0

    .line 163
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONWriter;->pop(C)V

    .line 165
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/json/JSONWriter;->comma:Z

    .line 170
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 166
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 167
    new-instance v4, Lorg/json/JSONException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private pop(C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/json/JSONWriter;->top:I

    if-gtz v3, :cond_0

    .line 255
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Nesting error."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    move-object v4, v0

    iget v4, v4, Lorg/json/JSONWriter;->top:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x61

    :goto_0
    move v2, v3

    .line 258
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_2

    .line 259
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Nesting error."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_1
    const/16 v3, 0x6b

    goto :goto_0

    .line 261
    :cond_2
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/json/JSONWriter;->top:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/json/JSONWriter;->top:I

    .line 262
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/json/JSONWriter;->top:I

    if-nez v4, :cond_3

    const/16 v4, 0x64

    :goto_1
    iput-char v4, v3, Lorg/json/JSONWriter;->mode:C

    .line 263
    return-void

    .line 262
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    move-object v5, v0

    iget v5, v5, Lorg/json/JSONWriter;->top:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    const/16 v4, 0x61

    goto :goto_1

    :cond_4
    const/16 v4, 0x6b

    goto :goto_1
.end method

.method private push(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Lorg/json/JSONWriter;->top:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 272
    new-instance v2, Lorg/json/JSONException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Nesting too deep."

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    move-object v3, v0

    iget v3, v3, Lorg/json/JSONWriter;->top:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 275
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/16 v3, 0x61

    :goto_0
    iput-char v3, v2, Lorg/json/JSONWriter;->mode:C

    .line 276
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/json/JSONWriter;->top:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/json/JSONWriter;->top:I

    .line 277
    return-void

    .line 275
    :cond_1
    const/16 v3, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    .line 143
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 144
    move-object v1, v0

    const-string v2, "["

    invoke-direct {v1, v2}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    .line 145
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/json/JSONWriter;->comma:Z

    .line 146
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 148
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Misplaced array."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endArray()Lorg/json/JSONWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x61

    const/16 v3, 0x5d

    invoke-direct {v1, v2, v3}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x6b

    const/16 v3, 0x7d

    invoke-direct {v1, v2, v3}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 203
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Null key."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_0
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONWriter;->mode:C

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_2

    .line 207
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lorg/json/JSONWriter;->comma:Z

    if-eqz v3, :cond_1

    .line 208
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 210
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    move-object v4, v0

    iget v4, v4, Lorg/json/JSONWriter;->top:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v4, v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 211
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    move-object v4, v1

    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 213
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/json/JSONWriter;->comma:Z

    .line 214
    move-object v3, v0

    const/16 v4, 0x6f

    iput-char v4, v3, Lorg/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 216
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 217
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 220
    :cond_2
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Misplaced key."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public object()Lorg/json/JSONWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    .line 235
    move-object v1, v0

    const/16 v2, 0x6f

    iput-char v2, v1, Lorg/json/JSONWriter;->mode:C

    .line 237
    :cond_0
    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONWriter;->mode:C

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    .line 238
    :cond_1
    move-object v1, v0

    const-string v2, "{"

    invoke-direct {v1, v2}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    .line 239
    move-object v1, v0

    new-instance v2, Lorg/json/JSONObject;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 240
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/json/JSONWriter;->comma:Z

    .line 241
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 243
    :cond_2
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Misplaced object."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(D)Lorg/json/JSONWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v4}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public value(J)Lorg/json/JSONWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const-string v3, "true"

    :goto_0
    invoke-direct {v2, v3}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    move-object v0, v2

    return-object v0

    :cond_0
    const-string v3, "false"

    goto :goto_0
.end method
