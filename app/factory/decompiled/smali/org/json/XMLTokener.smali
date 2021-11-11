.class public Lorg/json/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Lorg/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "apos"

    sget-object v2, Lorg/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "gt"

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "quot"

    sget-object v2, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 68
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/XMLTokener;->next()C

    move-result v4

    move v1, v4

    .line 69
    move v4, v1

    if-nez v4, :cond_1

    .line 70
    move-object v4, v0

    const-string v5, "Unclosed CDATA"

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 72
    :cond_1
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 73
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x3

    add-int/lit8 v4, v4, -0x3

    move v2, v4

    .line 74
    move v4, v2

    if-ltz v4, :cond_0

    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_0

    move-object v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_0

    move-object v4, v3

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_0

    .line 76
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->next()C

    move-result v3

    move v1, v3

    .line 97
    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    move v3, v1

    if-nez v3, :cond_1

    .line 99
    const/4 v3, 0x0

    move-object v0, v3

    .line 108
    :goto_0
    return-object v0

    .line 101
    :cond_1
    move v3, v1

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_2

    .line 102
    sget-object v3, Lorg/json/XML;->LT:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_0

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    .line 106
    :goto_1
    move v3, v1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    move v3, v1

    if-nez v3, :cond_4

    .line 107
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->back()V

    .line 108
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 110
    :cond_4
    move v3, v1

    const/16 v4, 0x26

    if-ne v3, v4, :cond_5

    .line 111
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 115
    :goto_2
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->next()C

    move-result v3

    move v1, v3

    goto :goto_1

    .line 113
    :cond_5
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_2
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    .line 130
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/XMLTokener;->next()C

    move-result v5

    move v3, v5

    .line 131
    move v5, v3

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    .line 132
    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 138
    goto :goto_0

    .line 133
    :cond_1
    move v5, v3

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_2

    .line 139
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 140
    sget-object v5, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 141
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    :goto_1
    move-object v0, v5

    return-object v0

    .line 136
    :cond_2
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing \';\' in XML entity: &"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 141
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->next()C

    move-result v3

    move v1, v3

    .line 159
    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 189
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->next()C

    move-result v3

    move v1, v3

    .line 190
    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    .line 204
    :goto_1
    return-object v0

    .line 162
    :sswitch_0
    move-object v3, v0

    const-string v4, "Misshaped meta tag"

    invoke-virtual {v3, v4}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 164
    :sswitch_1
    sget-object v3, Lorg/json/XML;->LT:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 166
    :sswitch_2
    sget-object v3, Lorg/json/XML;->GT:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 168
    :sswitch_3
    sget-object v3, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 170
    :sswitch_4
    sget-object v3, Lorg/json/XML;->EQ:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 172
    :sswitch_5
    sget-object v3, Lorg/json/XML;->BANG:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 174
    :sswitch_6
    sget-object v3, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    move-object v0, v3

    goto :goto_1

    .line 177
    :sswitch_7
    move v3, v1

    move v2, v3

    .line 179
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->next()C

    move-result v3

    move v1, v3

    .line 180
    move v3, v1

    if-nez v3, :cond_2

    .line 181
    move-object v3, v0

    const-string v4, "Unterminated string"

    invoke-virtual {v3, v4}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 183
    :cond_2
    move v3, v1

    move v4, v2

    if-ne v3, v4, :cond_1

    .line 184
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto :goto_1

    .line 193
    :cond_3
    move v3, v1

    sparse-switch v3, :sswitch_data_1

    .line 204
    goto :goto_0

    .line 203
    :sswitch_8
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/XMLTokener;->back()V

    .line 204
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 193
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/XMLTokener;->next()C

    move-result v4

    move v1, v4

    .line 225
    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    move v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 266
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 268
    :goto_0
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 269
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/XMLTokener;->next()C

    move-result v4

    move v1, v4

    .line 270
    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 284
    :goto_1
    return-object v0

    .line 228
    :sswitch_0
    move-object v4, v0

    const-string v5, "Misshaped element"

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 230
    :sswitch_1
    move-object v4, v0

    const-string v5, "Misplaced \'<\'"

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 232
    :sswitch_2
    sget-object v4, Lorg/json/XML;->GT:Ljava/lang/Character;

    move-object v0, v4

    goto :goto_1

    .line 234
    :sswitch_3
    sget-object v4, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    move-object v0, v4

    goto :goto_1

    .line 236
    :sswitch_4
    sget-object v4, Lorg/json/XML;->EQ:Ljava/lang/Character;

    move-object v0, v4

    goto :goto_1

    .line 238
    :sswitch_5
    sget-object v4, Lorg/json/XML;->BANG:Ljava/lang/Character;

    move-object v0, v4

    goto :goto_1

    .line 240
    :sswitch_6
    sget-object v4, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    move-object v0, v4

    goto :goto_1

    .line 246
    :sswitch_7
    move v4, v1

    move v2, v4

    .line 247
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 249
    :goto_2
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/XMLTokener;->next()C

    move-result v4

    move v1, v4

    .line 250
    move v4, v1

    if-nez v4, :cond_1

    .line 251
    move-object v4, v0

    const-string v5, "Unterminated string"

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 253
    :cond_1
    move v4, v1

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 254
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 256
    :cond_2
    move v4, v1

    const/16 v5, 0x26

    if-ne v4, v5, :cond_3

    .line 257
    move-object v4, v3

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2

    .line 259
    :cond_3
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2

    .line 273
    :cond_4
    move v4, v1

    sparse-switch v4, :sswitch_data_1

    .line 288
    goto/16 :goto_0

    .line 275
    :sswitch_8
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 283
    :sswitch_9
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/XMLTokener;->back()V

    .line 284
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 288
    :sswitch_a
    move-object v4, v0

    const-string v5, "Bad character in a name"

    invoke-virtual {v4, v5}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 273
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x27 -> :sswitch_a
        0x2f -> :sswitch_9
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    const/4 v9, 0x0

    move v6, v9

    .line 307
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    .line 308
    move v9, v7

    new-array v9, v9, [C

    move-object v8, v9

    .line 315
    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v7

    if-ge v9, v10, :cond_2

    .line 316
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->next()C

    move-result v9

    move v3, v9

    .line 317
    move v9, v3

    if-nez v9, :cond_0

    .line 318
    const/4 v9, 0x0

    move v0, v9

    .line 352
    :goto_1
    return v0

    .line 320
    :cond_0
    move-object v9, v8

    move v10, v4

    move v11, v3

    aput-char v11, v9, v10

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    :cond_1
    move-object v9, v8

    move v10, v6

    move v11, v3

    aput-char v11, v9, v10

    .line 359
    add-int/lit8 v6, v6, 0x1

    .line 360
    move v9, v6

    move v10, v7

    if-lt v9, v10, :cond_2

    .line 361
    move v9, v6

    move v10, v7

    sub-int/2addr v9, v10

    move v6, v9

    .line 326
    :cond_2
    move v9, v6

    move v5, v9

    .line 327
    const/4 v9, 0x1

    move v2, v9

    .line 331
    const/4 v9, 0x0

    move v4, v9

    :goto_2
    move v9, v4

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 332
    move-object v9, v8

    move v10, v5

    aget-char v9, v9, v10

    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_4

    .line 333
    const/4 v9, 0x0

    move v2, v9

    .line 344
    :cond_3
    move v9, v2

    if-eqz v9, :cond_6

    .line 345
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1

    .line 336
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 337
    move v9, v5

    move v10, v7

    if-lt v9, v10, :cond_5

    .line 338
    move v9, v5

    move v10, v7

    sub-int/2addr v9, v10

    move v5, v9

    .line 331
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 350
    :cond_6
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/XMLTokener;->next()C

    move-result v9

    move v3, v9

    .line 351
    move v9, v3

    if-nez v9, :cond_1

    .line 352
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1
.end method
