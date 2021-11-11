.class public Lorg/json/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 50
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v6

    .line 51
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 52
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 53
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v1, v6

    .line 54
    move v6, v1

    const/16 v7, 0x20

    if-lt v6, v7, :cond_0

    move v6, v1

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_0

    move v6, v1

    const/16 v7, 0x25

    if-eq v6, v7, :cond_0

    move v6, v1

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_0

    move v6, v1

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_1

    .line 55
    :cond_0
    move-object v6, v3

    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 56
    move-object v6, v3

    move v7, v1

    const/4 v8, 0x4

    ushr-int/lit8 v7, v7, 0x4

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 57
    move-object v6, v3

    move v7, v1

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 52
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_1
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_1

    .line 62
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v5

    .line 85
    new-instance v5, Lorg/json/JSONTokener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 86
    move-object v5, v2

    const-string v6, "name"

    move-object v7, v4

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 87
    move-object v5, v4

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->next(C)C

    move-result v5

    .line 88
    move-object v5, v2

    const-string v6, "value"

    move-object v7, v4

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 89
    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONTokener;->next()C

    move-result v5

    .line 90
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONTokener;->more()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    move-object v5, v4

    const-string v6, "=;"

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->nextTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 92
    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONTokener;->next()C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_1

    .line 93
    move-object v5, v1

    const-string v6, "secure"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v5

    .line 102
    :goto_1
    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 96
    :cond_0
    move-object v5, v4

    const-string v6, "Missing \'=\' in cookie parameter."

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 99
    :cond_1
    move-object v5, v4

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 100
    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONTokener;->next()C

    move-result v5

    goto :goto_1

    .line 104
    :cond_2
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 121
    move-object v2, v1

    move-object v3, v0

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 122
    move-object v2, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 123
    move-object v2, v1

    move-object v3, v0

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 124
    move-object v2, v0

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v1

    const-string v3, ";expires="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 126
    move-object v2, v1

    move-object v3, v0

    const-string v4, "expires"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 128
    :cond_0
    move-object v2, v0

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v1

    const-string v3, ";domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 130
    move-object v2, v1

    move-object v3, v0

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 132
    :cond_1
    move-object v2, v0

    const-string v3, "path"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    move-object v2, v1

    const-string v3, ";path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 134
    move-object v2, v1

    move-object v3, v0

    const-string v4, "path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 136
    :cond_2
    move-object v2, v0

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    move-object v2, v1

    const-string v3, ";secure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 139
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 151
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v7

    .line 152
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v7

    .line 153
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 154
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 155
    move v7, v4

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_1

    .line 156
    const/16 v7, 0x20

    move v4, v7

    .line 165
    :cond_0
    :goto_1
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    move v7, v4

    const/16 v8, 0x25

    if-ne v7, v8, :cond_0

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v1

    if-ge v7, v8, :cond_0

    .line 158
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/json/JSONTokener;->dehexchar(C)I

    move-result v7

    move v5, v7

    .line 159
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/json/JSONTokener;->dehexchar(C)I

    move-result v7

    move v6, v7

    .line 160
    move v7, v5

    if-ltz v7, :cond_0

    move v7, v6

    if-ltz v7, :cond_0

    .line 161
    move v7, v5

    const/16 v8, 0x10

    mul-int/lit8 v7, v7, 0x10

    move v8, v6

    add-int/2addr v7, v8

    int-to-char v7, v7

    move v4, v7

    .line 162
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 167
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method
