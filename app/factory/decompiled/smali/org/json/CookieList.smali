.class public Lorg/json/CookieList;
.super Ljava/lang/Object;
.source "CookieList.java"


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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v4

    .line 51
    new-instance v4, Lorg/json/JSONTokener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 52
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Lorg/json/JSONTokener;->more()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    move-object v4, v2

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 54
    move-object v4, v2

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->next(C)C

    move-result v4

    .line 55
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 56
    move-object v4, v2

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 73
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 75
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v5

    .line 76
    :cond_0
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 78
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    move v5, v1

    if-eqz v5, :cond_1

    .line 80
    move-object v5, v4

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 82
    :cond_1
    move-object v5, v4

    move-object v6, v3

    invoke-static {v6}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 83
    move-object v5, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 84
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 85
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 88
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
