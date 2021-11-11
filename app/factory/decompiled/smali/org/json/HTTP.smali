.class public Lorg/json/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v5

    .line 73
    new-instance v5, Lorg/json/HTTPTokener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/json/HTTPTokener;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 76
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 77
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HTTP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    move-object v5, v1

    const-string v6, "HTTP-Version"

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 82
    move-object v5, v1

    const-string v6, "Status-Code"

    move-object v7, v2

    invoke-virtual {v7}, Lorg/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 83
    move-object v5, v1

    const-string v6, "Reason-Phrase"

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 84
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/HTTPTokener;->next()C

    move-result v5

    .line 97
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/HTTPTokener;->more()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lorg/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 99
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lorg/json/HTTPTokener;->next(C)C

    move-result v5

    .line 100
    move-object v5, v1

    move-object v6, v4

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 101
    move-object v5, v2

    invoke-virtual {v5}, Lorg/json/HTTPTokener;->next()C

    move-result v5

    .line 102
    goto :goto_0

    .line 90
    :cond_0
    move-object v5, v1

    const-string v6, "Method"

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    move-object v5, v1

    const-string v6, "Request-URI"

    move-object v7, v2

    invoke-virtual {v7}, Lorg/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 92
    move-object v5, v1

    const-string v6, "HTTP-Version"

    move-object v7, v2

    invoke-virtual {v7}, Lorg/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 103
    :cond_1
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 130
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 131
    move-object v4, v0

    const-string v5, "Status-Code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    const-string v5, "Reason-Phrase"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    move-object v4, v3

    move-object v5, v0

    const-string v6, "HTTP-Version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 133
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 134
    move-object v4, v3

    move-object v5, v0

    const-string v6, "Status-Code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 135
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 136
    move-object v4, v3

    move-object v5, v0

    const-string v6, "Reason-Phrase"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 148
    :goto_0
    move-object v4, v3

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 149
    :cond_0
    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 151
    move-object v4, v2

    const-string v5, "HTTP-Version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "Status-Code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "Reason-Phrase"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "Method"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "Request-URI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 155
    move-object v4, v3

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 156
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 157
    move-object v4, v3

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    .line 137
    :cond_1
    move-object v4, v0

    const-string v5, "Method"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    const-string v5, "Request-URI"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    move-object v4, v3

    move-object v5, v0

    const-string v6, "Method"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 139
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 140
    move-object v4, v3

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 141
    move-object v4, v3

    move-object v5, v0

    const-string v6, "Request-URI"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 142
    move-object v4, v3

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 143
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 144
    move-object v4, v3

    move-object v5, v0

    const-string v6, "HTTP-Version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto/16 :goto_0

    .line 146
    :cond_2
    new-instance v4, Lorg/json/JSONException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not enough material for an HTTP header."

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_3
    move-object v4, v3

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 161
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
