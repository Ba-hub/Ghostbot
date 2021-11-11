.class public Lio/socket/backo/Backoff;
.super Ljava/lang/Object;
.source "Backoff.java"


# instance fields
.field private attempts:I

.field private factor:I

.field private jitter:D

.field private max:J

.field private ms:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    move-object v1, v0

    const-wide/16 v2, 0x64

    iput-wide v2, v1, Lio/socket/backo/Backoff;->ms:J

    .line 9
    move-object v1, v0

    const-wide/16 v2, 0x2710

    iput-wide v2, v1, Lio/socket/backo/Backoff;->max:J

    .line 10
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lio/socket/backo/Backoff;->factor:I

    .line 14
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 14

    .prologue
    .line 17
    move-object v1, p0

    move-object v6, v1

    iget-wide v6, v6, Lio/socket/backo/Backoff;->ms:J

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Lio/socket/backo/Backoff;->factor:I

    int-to-long v7, v7

    .line 18
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lio/socket/backo/Backoff;->attempts:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lio/socket/backo/Backoff;->attempts:I

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v2, v6

    .line 19
    move-object v6, v1

    iget-wide v6, v6, Lio/socket/backo/Backoff;->jitter:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    move-wide v3, v6

    .line 21
    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v7, v1

    iget-wide v7, v7, Lio/socket/backo/Backoff;->jitter:D

    .line 22
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    new-instance v7, Ljava/math/BigDecimal;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 23
    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    move-object v5, v6

    .line 24
    move-wide v6, v3

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :goto_0
    move-object v2, v6

    .line 26
    :cond_0
    move-object v6, v2

    move-object v7, v1

    iget-wide v7, v7, Lio/socket/backo/Backoff;->max:J

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    move-wide v1, v6

    return-wide v1

    .line 24
    :cond_1
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0
.end method

.method public getAttempts()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lio/socket/backo/Backoff;->attempts:I

    move v0, v1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lio/socket/backo/Backoff;->attempts:I

    .line 31
    return-void
.end method

.method public setFactor(I)Lio/socket/backo/Backoff;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lio/socket/backo/Backoff;->factor:I

    .line 45
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setJitter(D)Lio/socket/backo/Backoff;
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->jitter:D

    .line 50
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMax(J)Lio/socket/backo/Backoff;
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->max:J

    .line 40
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMin(J)Lio/socket/backo/Backoff;
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lio/socket/backo/Backoff;->ms:J

    .line 35
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
