.class public Lorg/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v5

    .line 78
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 79
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 80
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 94
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 78
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    move-object v5, v1

    const-string v6, "&amp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 83
    goto :goto_1

    .line 85
    :sswitch_1
    move-object v5, v1

    const-string v6, "&lt;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 86
    goto :goto_1

    .line 88
    :sswitch_2
    move-object v5, v1

    const-string v6, "&gt;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 89
    goto :goto_1

    .line 91
    :sswitch_3
    move-object v5, v1

    const-string v6, "&quot;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 92
    goto :goto_1

    .line 97
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v3

    .line 108
    move v3, v2

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Empty string."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_2

    .line 112
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' contains a space character."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v9, 0x0

    move-object v6, v9

    .line 146
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 150
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v9, v10, :cond_9

    .line 151
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->next()C

    move-result v9

    move v3, v9

    .line 152
    move v9, v3

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    .line 153
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->next()C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_0

    .line 154
    move-object v9, v0

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v9

    .line 155
    const/4 v9, 0x0

    move v0, v9

    .line 272
    :goto_0
    return v0

    .line 157
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->back()V

    .line 171
    :cond_1
    const/4 v9, 0x1

    move v4, v9

    .line 173
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 174
    move-object v9, v8

    if-nez v9, :cond_6

    .line 175
    move-object v9, v0

    const-string v10, "Missing \'>\' after \'<!\'."

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 158
    :cond_3
    move v9, v3

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_1

    .line 159
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 160
    move-object v9, v8

    const-string v10, "CDATA"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 161
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->next()C

    move-result v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_5

    .line 162
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 163
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 164
    move-object v9, v1

    const-string v10, "content"

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 166
    :cond_4
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 169
    :cond_5
    move-object v9, v0

    const-string v10, "Expected \'CDATA[\'"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 176
    :cond_6
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v9, v10, :cond_8

    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 181
    :cond_7
    :goto_1
    move v9, v4

    if-gtz v9, :cond_2

    .line 182
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 178
    :cond_8
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v9, v10, :cond_7

    .line 179
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 183
    :cond_9
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v9, v10, :cond_a

    .line 187
    move-object v9, v0

    const-string v10, "?>"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v9

    .line 188
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 189
    :cond_a
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v9, v10, :cond_e

    .line 193
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 194
    move-object v9, v2

    if-nez v9, :cond_b

    .line 195
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mismatched close tag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 197
    :cond_b
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 198
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mismatched "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 200
    :cond_c
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v9, v10, :cond_d

    .line 201
    move-object v9, v0

    const-string v10, "Misshaped close tag"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 203
    :cond_d
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 205
    :cond_e
    move-object v9, v8

    instance-of v9, v9, Ljava/lang/Character;

    if-eqz v9, :cond_f

    .line 206
    move-object v9, v0

    const-string v10, "Misshaped tag"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 211
    :cond_f
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 212
    const/4 v9, 0x0

    move-object v8, v9

    .line 213
    new-instance v9, Lorg/json/JSONObject;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v9

    .line 215
    :goto_2
    move-object v9, v8

    if-nez v9, :cond_10

    .line 216
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 221
    :cond_10
    move-object v9, v8

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 222
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 223
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 224
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v9, v10, :cond_12

    .line 225
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 226
    move-object v9, v8

    instance-of v9, v9, Ljava/lang/String;

    if-nez v9, :cond_11

    .line 227
    move-object v9, v0

    const-string v10, "Missing value"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 229
    :cond_11
    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 230
    const/4 v9, 0x0

    move-object v8, v9

    goto :goto_2

    .line 232
    :cond_12
    move-object v9, v6

    move-object v10, v7

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_2

    .line 237
    :cond_13
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v9, v10, :cond_15

    .line 238
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v9, v10, :cond_14

    .line 239
    move-object v9, v0

    const-string v10, "Misshaped tag"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 241
    :cond_14
    move-object v9, v1

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 242
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 246
    :cond_15
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v9, v10, :cond_1c

    .line 248
    :cond_16
    :goto_3
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 249
    move-object v9, v8

    if-nez v9, :cond_18

    .line 250
    move-object v9, v5

    if-eqz v9, :cond_17

    .line 251
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unclosed tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9

    .line 253
    :cond_17
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 254
    :cond_18
    move-object v9, v8

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_19

    .line 255
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 256
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_16

    .line 257
    move-object v9, v6

    const-string v10, "content"

    move-object v11, v7

    invoke-static {v11}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_3

    .line 262
    :cond_19
    move-object v9, v8

    sget-object v10, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v9, v10, :cond_16

    .line 263
    move-object v9, v0

    move-object v10, v6

    move-object v11, v5

    invoke-static {v9, v10, v11}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 264
    move-object v9, v6

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-nez v9, :cond_1a

    .line 265
    move-object v9, v1

    move-object v10, v5

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 272
    :goto_4
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 266
    :cond_1a
    move-object v9, v6

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    move-object v9, v6

    const-string v10, "content"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 268
    move-object v9, v1

    move-object v10, v5

    move-object v11, v6

    const-string v12, "content"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_4

    .line 270
    :cond_1b
    move-object v9, v1

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_4

    .line 277
    :cond_1c
    move-object v9, v0

    const-string v10, "Misshaped tag"

    invoke-virtual {v9, v10}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v9

    throw v9
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 300
    new-instance v3, Lorg/json/XMLTokener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 301
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Lorg/json/XMLTokener;->more()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, "<"

    invoke-virtual {v3, v4}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 304
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v11

    .line 337
    move-object v11, v0

    instance-of v11, v11, Lorg/json/JSONObject;

    if-eqz v11, :cond_c

    .line 341
    move-object v11, v1

    if-eqz v11, :cond_0

    .line 342
    move-object v11, v2

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 343
    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 344
    move-object v11, v2

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 349
    :cond_0
    move-object v11, v0

    check-cast v11, Lorg/json/JSONObject;

    move-object v5, v11

    .line 350
    move-object v11, v5

    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v11

    .line 351
    :cond_1
    :goto_0
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 352
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 353
    move-object v11, v5

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 354
    move-object v11, v10

    if-nez v11, :cond_2

    .line 355
    const-string v11, ""

    move-object v10, v11

    .line 357
    :cond_2
    move-object v11, v10

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 358
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    move-object v9, v11

    .line 365
    :goto_1
    move-object v11, v6

    const-string v12, "content"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 366
    move-object v11, v10

    instance-of v11, v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_5

    .line 367
    move-object v11, v10

    check-cast v11, Lorg/json/JSONArray;

    move-object v4, v11

    .line 368
    move-object v11, v4

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    move v8, v11

    .line 369
    const/4 v11, 0x0

    move v3, v11

    :goto_2
    move v11, v3

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 370
    move v11, v3

    if-lez v11, :cond_3

    .line 371
    move-object v11, v2

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 373
    :cond_3
    move-object v11, v2

    move-object v12, v4

    move v13, v3

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    :cond_4
    const/4 v11, 0x0

    move-object v9, v11

    goto :goto_1

    .line 376
    :cond_5
    move-object v11, v2

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto :goto_0

    .line 381
    :cond_6
    move-object v11, v10

    instance-of v11, v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_8

    .line 382
    move-object v11, v10

    check-cast v11, Lorg/json/JSONArray;

    move-object v4, v11

    .line 383
    move-object v11, v4

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    move v8, v11

    .line 384
    const/4 v11, 0x0

    move v3, v11

    :goto_3
    move v11, v3

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 385
    move-object v11, v4

    move v12, v3

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 386
    move-object v11, v10

    instance-of v11, v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_7

    .line 387
    move-object v11, v2

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 388
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 389
    move-object v11, v2

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 390
    move-object v11, v2

    move-object v12, v10

    invoke-static {v12}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 391
    move-object v11, v2

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 392
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 393
    move-object v11, v2

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 384
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 395
    :cond_7
    move-object v11, v2

    move-object v12, v10

    move-object v13, v6

    invoke-static {v12, v13}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto :goto_4

    .line 398
    :cond_8
    move-object v11, v10

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 399
    move-object v11, v2

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 400
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 401
    move-object v11, v2

    const-string v12, "/>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    .line 406
    :cond_9
    move-object v11, v2

    move-object v12, v10

    move-object v13, v6

    invoke-static {v12, v13}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    .line 409
    :cond_a
    move-object v11, v1

    if-eqz v11, :cond_b

    .line 413
    move-object v11, v2

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 414
    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 415
    move-object v11, v2

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 417
    :cond_b
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 432
    :goto_5
    return-object v0

    .line 422
    :cond_c
    move-object v11, v0

    instance-of v11, v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_f

    .line 423
    move-object v11, v0

    check-cast v11, Lorg/json/JSONArray;

    move-object v4, v11

    .line 424
    move-object v11, v4

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    move v8, v11

    .line 425
    const/4 v11, 0x0

    move v3, v11

    :goto_6
    move v11, v3

    move v12, v8

    if-ge v11, v12, :cond_e

    .line 426
    move-object v11, v4

    move v12, v3

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 427
    move-object v11, v2

    move-object v12, v10

    move-object v13, v1

    if-nez v13, :cond_d

    const-string v13, "array"

    :goto_7
    invoke-static {v12, v13}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 427
    :cond_d
    move-object v13, v1

    goto :goto_7

    .line 429
    :cond_e
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_5

    .line 431
    :cond_f
    move-object v11, v0

    if-nez v11, :cond_10

    const-string v11, "null"

    :goto_8
    move-object v9, v11

    .line 432
    move-object v11, v1

    if-nez v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_9
    move-object v0, v11

    goto :goto_5

    .line 431
    :cond_10
    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 432
    :cond_11
    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9
.end method
