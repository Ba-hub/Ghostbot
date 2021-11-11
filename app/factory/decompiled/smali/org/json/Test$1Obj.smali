.class Lorg/json/Test$1Obj;
.super Ljava/lang/Object;
.source "Test.java"

# interfaces
.implements Lorg/json/JSONString;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/json/Test;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Obj"
.end annotation


# instance fields
.field public aBoolean:Z

.field public aNumber:D

.field public aString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    .line 38
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lorg/json/Test$1Obj;->aNumber:D

    .line 39
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lorg/json/Test$1Obj;->aBoolean:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getBENT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    const-string v1, "All uppercase key"

    move-object v0, v1

    return-object v0
.end method

.method public getNumber()D
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lorg/json/Test$1Obj;->aNumber:D

    move-wide v0, v1

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    const-string v1, "x"

    move-object v0, v1

    return-object v0
.end method

.method public isBoolean()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/json/Test$1Obj;->aBoolean:Z

    move v0, v1

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/json/Test$1Obj;->aString:Ljava/lang/String;

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lorg/json/Test$1Obj;->aNumber:D

    invoke-static {v2, v3}, Lorg/json/JSONObject;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/Test$1Obj;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/Test$1Obj;->getNumber()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/Test$1Obj;->isBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/Test$1Obj;->getBENT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/Test$1Obj;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
