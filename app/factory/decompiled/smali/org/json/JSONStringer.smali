.class public Lorg/json/JSONStringer;
.super Lorg/json/JSONWriter;
.source "JSONStringer.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Ljava/io/StringWriter;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v2}, Lorg/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Lorg/json/JSONStringer;->mode:C

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/JSONStringer;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
