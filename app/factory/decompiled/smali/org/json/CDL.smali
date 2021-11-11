.class public Lorg/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lorg/json/JSONTokener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->next()C

    move-result v2

    move v1, v2

    .line 59
    move v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 60
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 70
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->back()V

    .line 71
    move-object v2, v0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 62
    :sswitch_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 65
    :sswitch_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 67
    :sswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/JSONTokener;->back()V

    .line 68
    const-string v2, ""

    move-object v0, v2

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    new-instance v4, Lorg/json/JSONArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v4

    .line 84
    :goto_0
    move-object v4, v0

    invoke-static {v4}, Lorg/json/CDL;->getValue(Lorg/json/JSONTokener;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 85
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 86
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 96
    :goto_1
    return-object v0

    .line 88
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 90
    :goto_2
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    move v3, v4

    .line 91
    move v4, v3

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    .line 102
    goto :goto_0

    .line 94
    :cond_2
    move v4, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5

    .line 95
    move v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    move v4, v3

    if-nez v4, :cond_4

    .line 96
    :cond_3
    move-object v4, v1

    move-object v0, v4

    goto :goto_1

    .line 98
    :cond_4
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 101
    :cond_5
    goto :goto_2
.end method

.method public static rowToJSONObject(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lorg/json/CDL;->rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v2, v3

    .line 118
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static rowToString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v5

    .line 192
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 193
    move v5, v2

    if-lez v5, :cond_0

    .line 194
    move-object v5, v1

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 196
    :cond_0
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 197
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 198
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 199
    move-object v5, v4

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 200
    move-object v5, v4

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 201
    move-object v5, v1

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 202
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 203
    move-object v5, v1

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 192
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_2
    move-object v5, v1

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 206
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 207
    move-object v5, v1

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_1

    .line 210
    :cond_3
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_1

    .line 214
    :cond_4
    move-object v5, v1

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 215
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    new-instance v1, Lorg/json/JSONTokener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONTokener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 180
    :goto_0
    return-object v0

    .line 169
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v4

    .line 171
    :goto_1
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/json/CDL;->rowToJSONObject(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 172
    move-object v4, v3

    if-nez v4, :cond_2

    .line 177
    move-object v4, v2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 178
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 175
    :cond_2
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 176
    goto :goto_1

    .line 180
    :cond_3
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public static toJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lorg/json/CDL;->rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v2, v0

    invoke-static {v1, v2}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object v1, v3

    .line 229
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    move-object v2, v3

    .line 231
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-static {v4}, Lorg/json/CDL;->rowToString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    move-object v5, v0

    invoke-static {v4, v5}, Lorg/json/CDL;->toString(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static toString(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 250
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 259
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    .line 253
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 254
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object v4, v5

    .line 255
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 256
    move-object v5, v2

    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lorg/json/CDL;->rowToString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 253
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
