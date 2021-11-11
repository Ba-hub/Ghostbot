.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private index:I

.field private lastChar:C

.field private reader:Ljava/io/Reader;

.field private useLastChar:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/Reader;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    iput-object v3, v2, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/json/JSONTokener;->useLastChar:Z

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/json/JSONTokener;->index:I

    .line 57
    return-void

    .line 53
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Ljava/io/StringReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 67
    return-void
.end method

.method public static dehexchar(C)I
    .locals 3

    .prologue
    .line 92
    move v0, p0

    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 93
    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 95
    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 96
    move v1, v0

    const/16 v2, 0x37

    add-int/lit8 v1, v1, -0x37

    move v0, v1

    goto :goto_0

    .line 98
    :cond_1
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_2

    .line 99
    move v1, v0

    const/16 v2, 0x57

    add-int/lit8 v1, v1, -0x57

    move v0, v1

    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/json/JSONTokener;->useLastChar:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/json/JSONTokener;->index:I

    if-gtz v1, :cond_1

    .line 77
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Stepping back two steps is not supported"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/json/JSONTokener;->index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/json/JSONTokener;->index:I

    .line 80
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/json/JSONTokener;->useLastChar:Z

    .line 81
    return-void
.end method

.method public more()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->next()C

    move-result v2

    move v1, v2

    .line 112
    move v2, v1

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    move v0, v2

    .line 116
    :goto_0
    return v0

    .line 115
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->back()V

    .line 116
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public next()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/json/JSONTokener;->useLastChar:Z

    if-eqz v3, :cond_1

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/json/JSONTokener;->useLastChar:Z

    .line 128
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONTokener;->lastChar:C

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/json/JSONTokener;->index:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/json/JSONTokener;->index:I

    .line 131
    :cond_0
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONTokener;->lastChar:C

    move v0, v3

    .line 146
    :goto_0
    return v0

    .line 135
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v3

    .line 140
    move v3, v1

    if-gtz v3, :cond_2

    .line 141
    move-object v3, v0

    const/4 v4, 0x0

    iput-char v4, v3, Lorg/json/JSONTokener;->lastChar:C

    .line 142
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 136
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 137
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 144
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/json/JSONTokener;->index:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/json/JSONTokener;->index:I

    .line 145
    move-object v3, v0

    move v4, v1

    int-to-char v4, v4

    iput-char v4, v3, Lorg/json/JSONTokener;->lastChar:C

    .line 146
    move-object v3, v0

    iget-char v3, v3, Lorg/json/JSONTokener;->lastChar:C

    move v0, v3

    goto :goto_0
.end method

.method public next(C)C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/JSONTokener;->next()C

    move-result v3

    move v2, v3

    .line 159
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 160
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and instead saw \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 163
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    .line 178
    const-string v5, ""

    move-object v0, v5

    .line 205
    :goto_0
    return-object v0

    .line 181
    :cond_0
    move v5, v1

    new-array v5, v5, [C

    move-object v2, v5

    .line 182
    const/4 v5, 0x0

    move v3, v5

    .line 184
    move-object v5, v0

    iget-boolean v5, v5, Lorg/json/JSONTokener;->useLastChar:Z

    if-eqz v5, :cond_1

    .line 185
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/json/JSONTokener;->useLastChar:Z

    .line 186
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-char v7, v7, Lorg/json/JSONTokener;->lastChar:C

    aput-char v7, v5, v6

    .line 187
    const/4 v5, 0x1

    move v3, v5

    .line 192
    :cond_1
    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    move-object v6, v2

    move v7, v3

    move v8, v1

    move v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    move v4, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 193
    move v5, v3

    move v6, v4

    add-int/2addr v5, v6

    move v3, v5

    goto :goto_1

    .line 198
    :cond_2
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/json/JSONTokener;->index:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lorg/json/JSONTokener;->index:I

    .line 200
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_3

    .line 201
    move-object v5, v0

    const-string v6, "Substring bounds error"

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 195
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 196
    new-instance v5, Lorg/json/JSONException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 204
    :cond_3
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    iput-char v6, v5, Lorg/json/JSONTokener;->lastChar:C

    .line 205
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    goto :goto_0
.end method

.method public nextClean()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->next()C

    move-result v2

    move v1, v2

    .line 217
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 218
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 220
    :cond_1
    goto :goto_0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 239
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v2, v4

    .line 240
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 274
    move v4, v2

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 275
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 244
    :sswitch_0
    move-object v4, v0

    const-string v5, "Unterminated string"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 246
    :sswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v2, v4

    .line 247
    move v4, v2

    sparse-switch v4, :sswitch_data_1

    .line 270
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 272
    goto :goto_0

    .line 249
    :sswitch_2
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 250
    goto :goto_0

    .line 252
    :sswitch_3
    move-object v4, v3

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 253
    goto :goto_0

    .line 255
    :sswitch_4
    move-object v4, v3

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 256
    goto :goto_0

    .line 258
    :sswitch_5
    move-object v4, v3

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 259
    goto :goto_0

    .line 261
    :sswitch_6
    move-object v4, v3

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 262
    goto :goto_0

    .line 264
    :sswitch_7
    move-object v4, v3

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 265
    goto :goto_0

    .line 267
    :sswitch_8
    move-object v4, v3

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 268
    goto :goto_0

    .line 277
    :cond_0
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto/16 :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 247
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move v1, p1

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v4

    .line 292
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v3, v4

    .line 293
    move v4, v3

    move v5, v1

    if-eq v4, v5, :cond_0

    move v4, v3

    if-eqz v4, :cond_0

    move v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 294
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 295
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 297
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 299
    :cond_2
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 300
    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 314
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v2, v4

    .line 315
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_0

    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 317
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 318
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 320
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 322
    :cond_2
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    move v1, v4

    .line 338
    move v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 360
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 361
    :goto_0
    move v4, v1

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const-string v4, ",:]}/\\\"[{;=#"

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 362
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 363
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v1, v4

    goto :goto_0

    .line 341
    :sswitch_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 371
    :goto_1
    return-object v0

    .line 343
    :sswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 344
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    move-object v0, v4

    goto :goto_1

    .line 347
    :sswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 348
    new-instance v4, Lorg/json/JSONArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    move-object v0, v4

    goto :goto_1

    .line 365
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 367
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 368
    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    move-object v4, v0

    const-string v5, "Missing value"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 371
    :cond_1
    move-object v4, v2

    invoke-static {v4}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lorg/json/JSONTokener;->index:I

    move v3, v4

    .line 386
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Ljava/io/Reader;->mark(I)V

    .line 388
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v2, v4

    .line 389
    move v4, v2

    if-nez v4, :cond_1

    .line 390
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->reset()V

    .line 391
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/json/JSONTokener;->index:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    move v4, v2

    move v0, v4

    .line 400
    :goto_0
    return v0

    .line 394
    :cond_1
    move v4, v2

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 399
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 400
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 395
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 396
    new-instance v4, Lorg/json/JSONException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 7

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/json/JSONException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " at character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lorg/json/JSONTokener;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
