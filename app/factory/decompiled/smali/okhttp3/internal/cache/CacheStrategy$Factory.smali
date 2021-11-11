.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 15

    .prologue
    .line 139
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v11, v1

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v11, v1

    const/4 v12, -0x1

    iput v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 140
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 141
    move-object v11, v1

    move-object v12, v4

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    .line 142
    move-object v11, v1

    move-object v12, v5

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 144
    move-object v11, v5

    if-eqz v11, :cond_5

    .line 145
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 146
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 147
    move-object v11, v5

    invoke-virtual {v11}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v11

    move-object v6, v11

    .line 148
    const/4 v11, 0x0

    move v7, v11

    move-object v11, v6

    invoke-virtual {v11}, Lokhttp3/Headers;->size()I

    move-result v11

    move v8, v11

    :goto_0
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_5

    .line 149
    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 150
    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 151
    const-string v11, "Date"

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 152
    move-object v11, v1

    move-object v12, v10

    invoke-static {v12}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 153
    move-object v11, v1

    move-object v12, v10

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v11, "Expires"

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 155
    move-object v11, v1

    move-object v12, v10

    invoke-static {v12}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 156
    :cond_2
    const-string v11, "Last-Modified"

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 157
    move-object v11, v1

    move-object v12, v10

    invoke-static {v12}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 158
    move-object v11, v1

    move-object v12, v10

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v11, "ETag"

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 160
    move-object v11, v1

    move-object v12, v10

    iput-object v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_4
    const-string v11, "Age"

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 162
    move-object v11, v1

    move-object v12, v10

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 166
    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 16

    .prologue
    .line 296
    move-object/from16 v1, p0

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x0

    move-object v12, v1

    iget-wide v12, v12, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 297
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :goto_0
    move-wide v2, v10

    .line 299
    move-object v10, v1

    iget v10, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    move-wide v10, v2

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v13, v1

    iget v13, v13, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v13, v13

    .line 300
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :goto_1
    move-wide v4, v10

    .line 302
    move-object v10, v1

    iget-wide v10, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    move-object v12, v1

    iget-wide v12, v12, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v10, v12

    move-wide v6, v10

    .line 303
    move-object v10, v1

    iget-wide v10, v10, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    move-object v12, v1

    iget-wide v12, v12, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 304
    move-wide v10, v4

    move-wide v12, v6

    add-long/2addr v10, v12

    move-wide v12, v8

    add-long/2addr v10, v12

    move-wide v1, v10

    return-wide v1

    .line 297
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 300
    :cond_1
    move-wide v10, v2

    goto :goto_1
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    .line 267
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v6}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v6

    move-object v1, v6

    .line 268
    move-object v6, v1

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 269
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v1

    invoke-virtual {v7}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-wide v0, v6

    .line 288
    :goto_0
    return-wide v0

    .line 270
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 271
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 272
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :goto_1
    move-wide v2, v6

    .line 274
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 275
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-wide v6, v4

    :goto_2
    move-wide v0, v6

    goto :goto_0

    .line 272
    :cond_1
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 275
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 276
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 277
    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 282
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 283
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    :goto_3
    move-wide v2, v6

    .line 285
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 286
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move-wide v6, v4

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    :goto_4
    move-wide v0, v6

    goto :goto_0

    .line 283
    :cond_4
    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3

    .line 286
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_4

    .line 288
    :cond_6
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .locals 25

    .prologue
    .line 185
    move-object/from16 v3, p0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 186
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    .line 259
    :goto_0
    return-object v3

    .line 190
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request;->isHttps()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v18

    if-nez v18, :cond_1

    .line 191
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto :goto_0

    .line 197
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 198
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto :goto_0

    .line 201
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v18

    move-object/from16 v4, v18

    .line 202
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->noCache()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 203
    :cond_3
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 206
    :cond_4
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 207
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 209
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 210
    move-wide/from16 v18, v7

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 213
    :cond_5
    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    .line 214
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 215
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 218
    :cond_6
    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    .line 219
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v18

    move-object/from16 v13, v18

    .line 220
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 221
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 224
    :cond_7
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->noCache()Z

    move-result v18

    if-nez v18, :cond_a

    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    add-long v18, v18, v20

    move-wide/from16 v20, v7

    move-wide/from16 v22, v11

    add-long v20, v20, v22

    cmp-long v18, v18, v20

    if-gez v18, :cond_a

    .line 225
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v18

    move-object/from16 v14, v18

    .line 226
    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    add-long v18, v18, v20

    move-wide/from16 v20, v7

    cmp-long v18, v18, v20

    if-ltz v18, :cond_8

    .line 227
    move-object/from16 v18, v14

    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual/range {v18 .. v20}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v18

    .line 229
    :cond_8
    const-wide/32 v18, 0x5265c00

    move-wide/from16 v15, v18

    .line 230
    move-wide/from16 v18, v5

    move-wide/from16 v20, v15

    cmp-long v18, v18, v20

    if-lez v18, :cond_9

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 231
    move-object/from16 v18, v14

    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual/range {v18 .. v20}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v18

    .line 233
    :cond_9
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 240
    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 241
    const-string v18, "If-None-Match"

    move-object/from16 v14, v18

    .line 242
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    .line 253
    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v18

    move-object/from16 v16, v18

    .line 254
    sget-object v18, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v19, v16

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-virtual/range {v18 .. v21}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v18

    move-object/from16 v19, v16

    .line 257
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v18

    .line 258
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v18

    move-object/from16 v17, v18

    .line 259
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v17

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 243
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 244
    const-string v18, "If-Modified-Since"

    move-object/from16 v14, v18

    .line 245
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    goto :goto_1

    .line 246
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 247
    const-string v18, "If-Modified-Since"

    move-object/from16 v14, v18

    .line 248
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v15, v18

    goto/16 :goto_1

    .line 250
    :cond_d
    new-instance v18, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v3, v18

    goto/16 :goto_0
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string v2, "If-None-Match"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v2

    move-object v1, v2

    .line 174
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object v0, v2

    .line 179
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
