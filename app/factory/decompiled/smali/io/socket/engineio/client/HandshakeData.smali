.class public Lio/socket/engineio/client/HandshakeData;
.super Ljava/lang/Object;
.source "HandshakeData.java"


# instance fields
.field public pingInterval:J

.field public pingTimeout:J

.field public sid:Ljava/lang/String;

.field public upgrades:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lio/socket/engineio/client/HandshakeData;-><init>(Lorg/json/JSONObject;)V

    .line 17
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v1, p0

    move-object v2, p1

    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v7, v2

    const-string v8, "upgrades"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v3, v7

    .line 21
    move-object v7, v3

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v4, v7

    .line 22
    move v7, v4

    new-array v7, v7, [Ljava/lang/String;

    move-object v5, v7

    .line 23
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 24
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 23
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 27
    :cond_0
    move-object v7, v1

    move-object v8, v2

    const-string v9, "sid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lio/socket/engineio/client/HandshakeData;->sid:Ljava/lang/String;

    .line 28
    move-object v7, v1

    move-object v8, v5

    iput-object v8, v7, Lio/socket/engineio/client/HandshakeData;->upgrades:[Ljava/lang/String;

    .line 29
    move-object v7, v1

    move-object v8, v2

    const-string v9, "pingInterval"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lio/socket/engineio/client/HandshakeData;->pingInterval:J

    .line 30
    move-object v7, v1

    move-object v8, v2

    const-string v9, "pingTimeout"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lio/socket/engineio/client/HandshakeData;->pingTimeout:J

    .line 31
    return-void
.end method
