.class public Lorg/json/HTTPTokener;
.super Lorg/json/JSONTokener;
.source "HTTPTokener.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    .line 54
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/HTTPTokener;->next()C

    move-result v4

    move v1, v4

    .line 55
    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    move v4, v1

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    move v4, v1

    const/16 v5, 0x27

    if-ne v4, v5, :cond_5

    .line 57
    :cond_1
    move v4, v1

    move v2, v4

    .line 59
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/HTTPTokener;->next()C

    move-result v4

    move v1, v4

    .line 60
    move v4, v1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 61
    move-object v4, v0

    const-string v5, "Unterminated string."

    invoke-virtual {v4, v5}, Lorg/json/HTTPTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 63
    :cond_2
    move v4, v1

    move v5, v2

    if-ne v4, v5, :cond_3

    .line 64
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 71
    :goto_1
    return-object v0

    .line 66
    :cond_3
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 73
    :cond_4
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 74
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/HTTPTokener;->next()C

    move-result v4

    move v1, v4

    .line 70
    :cond_5
    move v4, v1

    if-eqz v4, :cond_6

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    :cond_6
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method
