.class public Lorg/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v11, 0x0

    move-object v5, v11

    .line 54
    const/4 v11, 0x0

    move-object v7, v11

    .line 55
    const/4 v11, 0x0

    move-object v8, v11

    .line 57
    const/4 v11, 0x0

    move-object v10, v11

    .line 66
    :cond_0
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 67
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v11, v12, :cond_21

    .line 68
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 69
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/Character;

    if-eqz v11, :cond_e

    .line 70
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v11, v12, :cond_3

    .line 74
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 75
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_1

    .line 76
    new-instance v11, Lorg/json/JSONException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected a closing name instead of \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 80
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v11, v12, :cond_2

    .line 81
    move-object v11, v0

    const-string v12, "Misshaped close tag"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 83
    :cond_2
    move-object v11, v9

    move-object v0, v11

    .line 213
    :goto_1
    return-object v0

    .line 84
    :cond_3
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v11, v12, :cond_c

    .line 88
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->next()C

    move-result v11

    move v4, v11

    .line 89
    move v11, v4

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_5

    .line 90
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->next()C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_4

    .line 91
    move-object v11, v0

    const-string v12, "-->"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v11

    .line 93
    :cond_4
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->back()V

    goto/16 :goto_0

    .line 94
    :cond_5
    move v11, v4

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_7

    .line 95
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 96
    move-object v11, v9

    const-string v12, "CDATA"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->next()C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_6

    .line 97
    move-object v11, v2

    if-eqz v11, :cond_0

    .line 98
    move-object v11, v2

    move-object v12, v0

    invoke-virtual {v12}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    goto/16 :goto_0

    .line 101
    :cond_6
    move-object v11, v0

    const-string v12, "Expected \'CDATA[\'"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 104
    :cond_7
    const/4 v11, 0x1

    move v6, v11

    .line 106
    :cond_8
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 107
    move-object v11, v9

    if-nez v11, :cond_9

    .line 108
    move-object v11, v0

    const-string v12, "Missing \'>\' after \'<!\'."

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 109
    :cond_9
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v11, v12, :cond_b

    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 114
    :cond_a
    :goto_2
    move v11, v6

    if-gtz v11, :cond_8

    goto/16 :goto_0

    .line 111
    :cond_b
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v11, v12, :cond_a

    .line 112
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 116
    :cond_c
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v11, v12, :cond_d

    .line 120
    move-object v11, v0

    const-string v12, "?>"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v11

    goto/16 :goto_0

    .line 122
    :cond_d
    move-object v11, v0

    const-string v12, "Misshaped tag"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 128
    :cond_e
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_f

    .line 129
    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad tagName \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 131
    :cond_f
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    move-object v10, v11

    .line 132
    new-instance v11, Lorg/json/JSONArray;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v11

    .line 133
    new-instance v11, Lorg/json/JSONObject;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v11

    .line 134
    move v11, v1

    if-eqz v11, :cond_12

    .line 135
    move-object v11, v7

    move-object v12, v10

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    .line 136
    move-object v11, v2

    if-eqz v11, :cond_10

    .line 137
    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    .line 145
    :cond_10
    :goto_3
    const/4 v11, 0x0

    move-object v9, v11

    .line 147
    :goto_4
    move-object v11, v9

    if-nez v11, :cond_11

    .line 148
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 150
    :cond_11
    move-object v11, v9

    if-nez v11, :cond_13

    .line 151
    move-object v11, v0

    const-string v12, "Misshaped tag"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 140
    :cond_12
    move-object v11, v8

    const-string v12, "tagName"

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 141
    move-object v11, v2

    if-eqz v11, :cond_10

    .line 142
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_3

    .line 153
    :cond_13
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_15

    .line 175
    move v11, v1

    if-eqz v11, :cond_14

    move-object v11, v8

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_14

    .line 176
    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    .line 181
    :cond_14
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v11, v12, :cond_1c

    .line 182
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v11, v12, :cond_1a

    .line 183
    move-object v11, v0

    const-string v12, "Misshaped tag"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 159
    :cond_15
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    move-object v3, v11

    .line 160
    move v11, v1

    if-nez v11, :cond_17

    move-object v11, v3

    const-string v12, "tagName"

    if-eq v11, v12, :cond_16

    move-object v11, v3

    const-string v12, "childNode"

    if-ne v11, v12, :cond_17

    .line 161
    :cond_16
    move-object v11, v0

    const-string v12, "Reserved attribute."

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 163
    :cond_17
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 164
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v11, v12, :cond_19

    .line 165
    move-object v11, v0

    invoke-virtual {v11}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 166
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_18

    .line 167
    move-object v11, v0

    const-string v12, "Missing value"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 169
    :cond_18
    move-object v11, v8

    move-object v12, v3

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 170
    const/4 v11, 0x0

    move-object v9, v11

    goto/16 :goto_4

    .line 172
    :cond_19
    move-object v11, v8

    move-object v12, v3

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    goto/16 :goto_4

    .line 185
    :cond_1a
    move-object v11, v2

    if-nez v11, :cond_0

    .line 186
    move v11, v1

    if-eqz v11, :cond_1b

    .line 187
    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_1

    .line 189
    :cond_1b
    move-object v11, v8

    move-object v0, v11

    goto/16 :goto_1

    .line 196
    :cond_1c
    move-object v11, v9

    sget-object v12, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v11, v12, :cond_1d

    .line 197
    move-object v11, v0

    const-string v12, "Misshaped tag"

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 199
    :cond_1d
    move-object v11, v0

    move v12, v1

    move-object v13, v7

    invoke-static {v11, v12, v13}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v5, v11

    .line 200
    move-object v11, v5

    if-eqz v11, :cond_0

    .line 201
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 202
    move-object v11, v0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mismatched \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' and \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v11

    throw v11

    .line 205
    :cond_1e
    const/4 v11, 0x0

    move-object v10, v11

    .line 206
    move v11, v1

    if-nez v11, :cond_1f

    move-object v11, v7

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1f

    .line 207
    move-object v11, v8

    const-string v12, "childNodes"

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    .line 209
    :cond_1f
    move-object v11, v2

    if-nez v11, :cond_0

    .line 210
    move v11, v1

    if-eqz v11, :cond_20

    .line 211
    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_1

    .line 213
    :cond_20
    move-object v11, v8

    move-object v0, v11

    goto/16 :goto_1

    .line 220
    :cond_21
    move-object v11, v2

    if-eqz v11, :cond_0

    .line 221
    move-object v11, v2

    move-object v12, v9

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_22

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    :goto_5
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    goto/16 :goto_0

    :cond_22
    move-object v12, v9

    goto :goto_5
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    new-instance v1, Lorg/json/XMLTokener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    move-object v0, v1

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    new-instance v1, Lorg/json/XMLTokener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/json/JSONML;->toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    move-object v0, v1

    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v10

    .line 317
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 318
    move-object v10, v8

    invoke-static {v10}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 319
    move-object v10, v8

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 320
    move-object v10, v7

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 321
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 323
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 324
    move-object v10, v1

    instance-of v10, v10, Lorg/json/JSONObject;

    if-eqz v10, :cond_1

    .line 325
    const/4 v10, 0x2

    move v2, v10

    .line 326
    move-object v10, v1

    check-cast v10, Lorg/json/JSONObject;

    move-object v3, v10

    .line 330
    move-object v10, v3

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    .line 331
    :cond_0
    :goto_0
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 332
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 333
    move-object v10, v4

    invoke-static {v10}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 334
    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 335
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 336
    move-object v10, v7

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 337
    move-object v10, v7

    move-object v11, v4

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 338
    move-object v10, v7

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 339
    move-object v10, v7

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 340
    move-object v10, v7

    move-object v11, v9

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 341
    move-object v10, v7

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_0

    .line 345
    :cond_1
    const/4 v10, 0x1

    move v2, v10

    .line 350
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v6, v10

    .line 351
    move v10, v2

    move v11, v6

    if-lt v10, v11, :cond_3

    .line 352
    move-object v10, v7

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 353
    move-object v10, v7

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 374
    :goto_1
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 355
    :cond_3
    move-object v10, v7

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 357
    :cond_4
    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 358
    add-int/lit8 v2, v2, 0x1

    .line 359
    move-object v10, v1

    if-eqz v10, :cond_5

    .line 360
    move-object v10, v1

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 361
    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 368
    :cond_5
    :goto_2
    move v10, v2

    move v11, v6

    if-lt v10, v11, :cond_4

    .line 369
    move-object v10, v7

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 370
    move-object v10, v7

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 371
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 372
    move-object v10, v7

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_1

    .line 362
    :cond_6
    move-object v10, v1

    instance-of v10, v10, Lorg/json/JSONObject;

    if-eqz v10, :cond_7

    .line 363
    move-object v10, v7

    move-object v11, v1

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v11}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_2

    .line 364
    :cond_7
    move-object v10, v1

    instance-of v10, v10, Lorg/json/JSONArray;

    if-eqz v10, :cond_5

    .line 365
    move-object v10, v7

    move-object v11, v1

    check-cast v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_2
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v10

    .line 399
    move-object v10, v0

    const-string v11, "tagName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 400
    move-object v10, v8

    if-nez v10, :cond_0

    .line 401
    move-object v10, v0

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 453
    :goto_0
    return-object v0

    .line 403
    :cond_0
    move-object v10, v8

    invoke-static {v10}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 404
    move-object v10, v8

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 405
    move-object v10, v1

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 406
    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 410
    move-object v10, v0

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    .line 411
    :cond_1
    :goto_1
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 412
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 413
    move-object v10, v5

    const-string v11, "tagName"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v5

    const-string v11, "childNodes"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 414
    move-object v10, v5

    invoke-static {v10}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 415
    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 416
    move-object v10, v9

    if-eqz v10, :cond_1

    .line 417
    move-object v10, v1

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 418
    move-object v10, v1

    move-object v11, v5

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 419
    move-object v10, v1

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 420
    move-object v10, v1

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 421
    move-object v10, v1

    move-object v11, v9

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 422
    move-object v10, v1

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_1

    .line 429
    :cond_2
    move-object v10, v0

    const-string v11, "childNodes"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v4, v10

    .line 430
    move-object v10, v4

    if-nez v10, :cond_3

    .line 431
    move-object v10, v1

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 432
    move-object v10, v1

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 453
    :goto_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 434
    :cond_3
    move-object v10, v1

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 435
    move-object v10, v4

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v7, v10

    .line 436
    const/4 v10, 0x0

    move v3, v10

    :goto_3
    move v10, v3

    move v11, v7

    if-ge v10, v11, :cond_7

    .line 437
    move-object v10, v4

    move v11, v3

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 438
    move-object v10, v2

    if-eqz v10, :cond_4

    .line 439
    move-object v10, v2

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 440
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 436
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 441
    :cond_5
    move-object v10, v2

    instance-of v10, v10, Lorg/json/JSONObject;

    if-eqz v10, :cond_6

    .line 442
    move-object v10, v1

    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v11}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_4

    .line 443
    :cond_6
    move-object v10, v2

    instance-of v10, v10, Lorg/json/JSONArray;

    if-eqz v10, :cond_4

    .line 444
    move-object v10, v1

    move-object v11, v2

    check-cast v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_4

    .line 448
    :cond_7
    move-object v10, v1

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 449
    move-object v10, v1

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 450
    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 451
    move-object v10, v1

    const/16 v11, 0x3e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_2
.end method
