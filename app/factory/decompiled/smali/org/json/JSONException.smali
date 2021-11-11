.class public Lorg/json/JSONException;
.super Ljava/lang/Exception;
.source "JSONException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/json/JSONException;->cause:Ljava/lang/Throwable;

    .line 22
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/JSONException;->cause:Ljava/lang/Throwable;

    move-object v0, v1

    return-object v0
.end method
