.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 15

    .prologue
    .line 65
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 67
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 68
    move-object v11, v0

    move-wide v12, v3

    iput-wide v12, v11, Lokhttp3/Cookie;->expiresAt:J

    .line 69
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 70
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 71
    move-object v11, v0

    move v12, v7

    iput-boolean v12, v11, Lokhttp3/Cookie;->secure:Z

    .line 72
    move-object v11, v0

    move v12, v8

    iput-boolean v12, v11, Lokhttp3/Cookie;->httpOnly:Z

    .line 73
    move-object v11, v0

    move v12, v9

    iput-boolean v12, v11, Lokhttp3/Cookie;->hostOnly:Z

    .line 74
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lokhttp3/Cookie;->persistent:Z

    .line 75
    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 7

    .prologue
    .line 77
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "builder.name == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "builder.value == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "builder.domain == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_2
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 83
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 84
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v4, v3, Lokhttp3/Cookie;->expiresAt:J

    .line 85
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 86
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 87
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v4, v3, Lokhttp3/Cookie;->secure:Z

    .line 88
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v4, v3, Lokhttp3/Cookie;->httpOnly:Z

    .line 89
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v4, v3, Lokhttp3/Cookie;->persistent:Z

    .line 90
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v4, v3, Lokhttp3/Cookie;->hostOnly:Z

    .line 91
    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 9

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, v1

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 381
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 382
    move v7, v5

    const/16 v8, 0x20

    if-ge v7, v8, :cond_0

    move v7, v5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_4

    :cond_0
    move v7, v5

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    move v7, v5

    const/16 v8, 0x39

    if-le v7, v8, :cond_4

    :cond_1
    move v7, v5

    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    move v7, v5

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    :cond_2
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    move v7, v5

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    :cond_3
    move v7, v5

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 387
    move v7, v6

    move v8, v3

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    if-ne v7, v8, :cond_7

    move v7, v4

    move v0, v7

    .line 389
    :goto_3
    return v0

    .line 382
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 387
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 380
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    :cond_8
    move v7, v2

    move v0, v7

    goto :goto_3
.end method

.method private static domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 185
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const/4 v3, 0x1

    move v0, v3

    .line 195
    :goto_0
    return v0

    .line 189
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v2

    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    move-object v3, v2

    .line 191
    invoke-static {v3}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 195
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 42

    .prologue
    .line 222
    move-wide/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    const/16 v28, 0x0

    move/from16 v7, v28

    .line 223
    move-object/from16 v28, v6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v8, v28

    .line 224
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x3b

    invoke-static/range {v28 .. v31}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v28

    move/from16 v9, v28

    .line 226
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    const/16 v31, 0x3d

    invoke-static/range {v28 .. v31}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v28

    move/from16 v10, v28

    .line 227
    move/from16 v28, v10

    move/from16 v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    const/16 v28, 0x0

    move-object/from16 v3, v28

    .line 314
    :goto_0
    return-object v3

    .line 229
    :cond_0
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v10

    invoke-static/range {v28 .. v30}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v11, v28

    .line 230
    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_1

    const/16 v28, 0x0

    move-object/from16 v3, v28

    goto :goto_0

    .line 232
    :cond_1
    move-object/from16 v28, v6

    move/from16 v29, v10

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v9

    invoke-static/range {v28 .. v30}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v12, v28

    .line 234
    const-wide v28, 0xe677d21fdbffL

    move-wide/from16 v13, v28

    .line 235
    const-wide/16 v28, -0x1

    move-wide/from16 v15, v28

    .line 236
    const/16 v28, 0x0

    move-object/from16 v17, v28

    .line 237
    const/16 v28, 0x0

    move-object/from16 v18, v28

    .line 238
    const/16 v28, 0x0

    move/from16 v19, v28

    .line 239
    const/16 v28, 0x0

    move/from16 v20, v28

    .line 240
    const/16 v28, 0x1

    move/from16 v21, v28

    .line 241
    const/16 v28, 0x0

    move/from16 v22, v28

    .line 243
    move/from16 v28, v9

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v7, v28

    .line 244
    :goto_1
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 245
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v31, 0x3b

    invoke-static/range {v28 .. v31}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v28

    move/from16 v23, v28

    .line 247
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v23

    const/16 v31, 0x3d

    invoke-static/range {v28 .. v31}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v28

    move/from16 v24, v28

    .line 248
    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v24

    invoke-static/range {v28 .. v30}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v25, v28

    .line 249
    move/from16 v28, v24

    move/from16 v29, v23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    move-object/from16 v28, v6

    move/from16 v29, v24

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v23

    .line 250
    invoke-static/range {v28 .. v30}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v28

    :goto_2
    move-object/from16 v26, v28

    .line 253
    move-object/from16 v28, v25

    const-string v29, "expires"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 255
    move-object/from16 v28, v26

    const/16 v29, 0x0

    move-object/from16 v30, v26

    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v28

    move-wide/from16 v13, v28

    .line 256
    const/16 v28, 0x1

    move/from16 v22, v28

    .line 282
    :cond_2
    :goto_3
    move/from16 v28, v23

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v7, v28

    .line 283
    goto :goto_1

    .line 250
    :cond_3
    const-string v28, ""

    goto :goto_2

    .line 257
    :catch_0
    move-exception v28

    move-object/from16 v27, v28

    .line 259
    goto :goto_3

    .line 260
    :cond_4
    move-object/from16 v28, v25

    const-string v29, "max-age"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 262
    move-object/from16 v28, v26

    :try_start_1
    invoke-static/range {v28 .. v28}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v28

    move-wide/from16 v15, v28

    .line 263
    const/16 v28, 0x1

    move/from16 v22, v28

    .line 266
    goto :goto_3

    .line 264
    :catch_1
    move-exception v28

    move-object/from16 v27, v28

    .line 266
    goto :goto_3

    .line 267
    :cond_5
    move-object/from16 v28, v25

    const-string v29, "domain"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 269
    move-object/from16 v28, v26

    :try_start_2
    invoke-static/range {v28 .. v28}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    move-object/from16 v17, v28

    .line 270
    const/16 v28, 0x0

    move/from16 v21, v28

    .line 273
    goto :goto_3

    .line 271
    :catch_2
    move-exception v28

    move-object/from16 v27, v28

    .line 273
    goto :goto_3

    .line 274
    :cond_6
    move-object/from16 v28, v25

    const-string v29, "path"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 275
    move-object/from16 v28, v26

    move-object/from16 v18, v28

    goto :goto_3

    .line 276
    :cond_7
    move-object/from16 v28, v25

    const-string v29, "secure"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 277
    const/16 v28, 0x1

    move/from16 v19, v28

    goto :goto_3

    .line 278
    :cond_8
    move-object/from16 v28, v25

    const-string v29, "httponly"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 279
    const/16 v28, 0x1

    move/from16 v20, v28

    goto :goto_3

    .line 287
    :cond_9
    move-wide/from16 v28, v15

    const-wide/high16 v30, -0x8000000000000000L

    cmp-long v28, v28, v30

    if-nez v28, :cond_e

    .line 288
    const-wide/high16 v28, -0x8000000000000000L

    move-wide/from16 v13, v28

    .line 300
    :cond_a
    :goto_4
    move-object/from16 v28, v17

    if-nez v28, :cond_11

    .line 301
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v17, v28

    .line 308
    :cond_b
    move-object/from16 v28, v18

    if-eqz v28, :cond_c

    move-object/from16 v28, v18

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 309
    :cond_c
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v28

    .line 310
    move-object/from16 v28, v23

    const/16 v29, 0x2f

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    move/from16 v24, v28

    .line 311
    move/from16 v28, v24

    if-eqz v28, :cond_12

    move-object/from16 v28, v23

    const/16 v29, 0x0

    move/from16 v30, v24

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    :goto_5
    move-object/from16 v18, v28

    .line 314
    :cond_d
    new-instance v28, Lokhttp3/Cookie;

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v32, v13

    move-object/from16 v34, v17

    move-object/from16 v35, v18

    move/from16 v36, v19

    move/from16 v37, v20

    move/from16 v38, v21

    move/from16 v39, v22

    invoke-direct/range {v29 .. v39}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    move-object/from16 v3, v28

    goto/16 :goto_0

    .line 289
    :cond_e
    move-wide/from16 v28, v15

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-eqz v28, :cond_a

    .line 290
    move-wide/from16 v28, v15

    const-wide v30, 0x20c49ba5e353f7L

    cmp-long v28, v28, v30

    if-gtz v28, :cond_10

    move-wide/from16 v28, v15

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    :goto_6
    move-wide/from16 v23, v28

    .line 293
    move-wide/from16 v28, v3

    move-wide/from16 v30, v23

    add-long v28, v28, v30

    move-wide/from16 v13, v28

    .line 294
    move-wide/from16 v28, v13

    move-wide/from16 v30, v3

    cmp-long v28, v28, v30

    if-ltz v28, :cond_f

    move-wide/from16 v28, v13

    const-wide v30, 0xe677d21fdbffL

    cmp-long v28, v28, v30

    if-lez v28, :cond_a

    .line 295
    :cond_f
    const-wide v28, 0xe677d21fdbffL

    move-wide/from16 v13, v28

    goto/16 :goto_4

    .line 290
    :cond_10
    const-wide v28, 0x7fffffffffffffffL

    goto :goto_6

    .line 302
    :cond_11
    move-object/from16 v28, v5

    move-object/from16 v29, v17

    invoke-static/range {v28 .. v29}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 303
    const/16 v28, 0x0

    move-object/from16 v3, v28

    goto/16 :goto_0

    .line 311
    :cond_12
    const-string v28, "/"

    goto :goto_5
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v4, v0

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const-string v8, "Set-Cookie"

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 433
    const/4 v7, 0x0

    move-object v3, v7

    .line 435
    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 436
    move-object v7, v0

    move-object v8, v2

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v7

    move-object v6, v7

    .line 437
    move-object v7, v6

    if-nez v7, :cond_0

    .line 435
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 439
    :cond_1
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 442
    :cond_2
    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    .line 443
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 442
    :goto_2
    move-object v0, v7

    return-object v0

    .line 444
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_2
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    move-object v0, p0

    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 420
    :cond_0
    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 423
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 424
    move-object v2, v1

    if-nez v2, :cond_2

    .line 425
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 427
    :cond_2
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    move v13, v1

    move v14, v2

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v1, v12

    .line 322
    const/4 v12, -0x1

    move v3, v12

    .line 323
    const/4 v12, -0x1

    move v4, v12

    .line 324
    const/4 v12, -0x1

    move v5, v12

    .line 325
    const/4 v12, -0x1

    move v6, v12

    .line 326
    const/4 v12, -0x1

    move v7, v12

    .line 327
    const/4 v12, -0x1

    move v8, v12

    .line 328
    sget-object v12, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v9, v12

    .line 330
    :goto_0
    move v12, v1

    move v13, v2

    if-ge v12, v13, :cond_4

    .line 331
    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v10, v12

    .line 332
    move-object v12, v9

    move v13, v1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 334
    move v12, v3

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 335
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v3, v12

    .line 336
    move-object v12, v9

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v4, v12

    .line 337
    move-object v12, v9

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v5, v12

    .line 347
    :cond_0
    :goto_1
    move-object v12, v0

    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v12

    move v1, v12

    .line 348
    goto :goto_0

    .line 338
    :cond_1
    move v12, v6

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 339
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v6, v12

    goto :goto_1

    .line 340
    :cond_2
    move v12, v7

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 341
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 342
    sget-object v12, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v12

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x4

    div-int/lit8 v12, v12, 0x4

    move v7, v12

    .line 343
    goto :goto_1

    :cond_3
    move v12, v8

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    move-object v12, v9

    sget-object v13, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 344
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    goto :goto_1

    .line 351
    :cond_4
    move v12, v8

    const/16 v13, 0x46

    if-lt v12, v13, :cond_5

    move v12, v8

    const/16 v13, 0x63

    if-gt v12, v13, :cond_5

    add-int/lit16 v8, v8, 0x76c

    .line 352
    :cond_5
    move v12, v8

    if-ltz v12, :cond_6

    move v12, v8

    const/16 v13, 0x45

    if-gt v12, v13, :cond_6

    add-int/lit16 v8, v8, 0x7d0

    .line 356
    :cond_6
    move v12, v8

    const/16 v13, 0x641

    if-ge v12, v13, :cond_7

    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 357
    :cond_7
    move v12, v7

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 358
    :cond_8
    move v12, v6

    const/4 v13, 0x1

    if-lt v12, v13, :cond_9

    move v12, v6

    const/16 v13, 0x1f

    if-le v12, v13, :cond_a

    :cond_9
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 359
    :cond_a
    move v12, v3

    if-ltz v12, :cond_b

    move v12, v3

    const/16 v13, 0x17

    if-le v12, v13, :cond_c

    :cond_b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 360
    :cond_c
    move v12, v4

    if-ltz v12, :cond_d

    move v12, v4

    const/16 v13, 0x3b

    if-le v12, v13, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 361
    :cond_e
    move v12, v5

    if-ltz v12, :cond_f

    move v12, v5

    const/16 v13, 0x3b

    if-le v12, v13, :cond_10

    :cond_f
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 363
    :cond_10
    new-instance v12, Ljava/util/GregorianCalendar;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    sget-object v14, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v13, v14}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v10, v12

    .line 364
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setLenient(Z)V

    .line 365
    move-object v12, v10

    const/4 v13, 0x1

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 366
    move-object v12, v10

    const/4 v13, 0x2

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 367
    move-object v12, v10

    const/4 v13, 0x5

    move v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 368
    move-object v12, v10

    const/16 v13, 0xb

    move v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 369
    move-object v12, v10

    const/16 v13, 0xc

    move v14, v4

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 370
    move-object v12, v10

    const/16 v13, 0xd

    move v14, v5

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 371
    move-object v12, v10

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 372
    move-object v12, v10

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-wide v0, v12

    return-wide v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 401
    move-object v1, p0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 402
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    :goto_0
    move-wide v1, v4

    .line 406
    :goto_1
    return-wide v1

    .line 402
    :cond_0
    move-wide v4, v2

    goto :goto_0

    .line 403
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 405
    move-object v4, v1

    const-string v5, "-?\\d+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    move-object v4, v1

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    :goto_2
    move-wide v1, v4

    goto :goto_1

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    .line 408
    :cond_2
    move-object v4, v2

    throw v4
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 201
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    move v0, v3

    .line 210
    :goto_0
    return v0

    .line 205
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    move-object v3, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 207
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 210
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 577
    move-object v1, p0

    move-object v2, p1

    move-object v4, v2

    instance-of v4, v4, Lokhttp3/Cookie;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 579
    :goto_0
    return v1

    .line 578
    :cond_0
    move-object v4, v2

    check-cast v4, Lokhttp3/Cookie;

    move-object v3, v4

    .line 579
    move-object v4, v3

    iget-object v4, v4, Lokhttp3/Cookie;->name:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lokhttp3/Cookie;->value:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 580
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 582
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-wide v4, v4, Lokhttp3/Cookie;->expiresAt:J

    move-object v6, v1

    iget-wide v6, v6, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lokhttp3/Cookie;->secure:Z

    move-object v5, v1

    iget-boolean v5, v5, Lokhttp3/Cookie;->secure:Z

    if-ne v4, v5, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lokhttp3/Cookie;->httpOnly:Z

    move-object v5, v1

    iget-boolean v5, v5, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v4, v5, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lokhttp3/Cookie;->persistent:Z

    move-object v5, v1

    iget-boolean v5, v5, Lokhttp3/Cookie;->persistent:Z

    if-ne v4, v5, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lokhttp3/Cookie;->hostOnly:Z

    move-object v5, v1

    iget-boolean v5, v5, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    .line 579
    :goto_1
    move v1, v4

    goto :goto_0

    .line 582
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public expiresAt()J
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokhttp3/Cookie;->expiresAt:J

    move-wide v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 591
    move-object v1, p0

    const/16 v3, 0x11

    move v2, v3

    .line 592
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 593
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 594
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 595
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 596
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lokhttp3/Cookie;->expiresAt:J

    move-object v6, v1

    iget-wide v6, v6, Lokhttp3/Cookie;->expiresAt:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 597
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->secure:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 598
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 599
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->persistent:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v3, v4

    move v2, v3

    .line 600
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_3
    add-int/2addr v3, v4

    move v2, v3

    .line 601
    move v3, v2

    move v1, v3

    return v1

    .line 597
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 599
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 600
    :cond_3
    const/4 v4, 0x1

    goto :goto_3
.end method

.method public hostOnly()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->hostOnly:Z

    move v0, v1

    return v0
.end method

.method public httpOnly()Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->httpOnly:Z

    move v0, v1

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 171
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 172
    :goto_0
    move v2, v3

    .line 173
    move v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 179
    :goto_1
    return v0

    .line 171
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 172
    invoke-static {v3, v4}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 175
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 177
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Lokhttp3/Cookie;->secure:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 179
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public persistent()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->persistent:Z

    move v0, v1

    return v0
.end method

.method public secure()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lokhttp3/Cookie;->secure:Z

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 10

    .prologue
    .line 542
    move-object v1, p0

    move v2, p1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    .line 543
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    move-object v4, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 545
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 547
    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->persistent:Z

    if-eqz v4, :cond_0

    .line 548
    move-object v4, v1

    iget-wide v4, v4, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 549
    move-object v4, v3

    const-string v5, "; max-age=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 555
    :cond_0
    :goto_0
    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v4, :cond_2

    .line 556
    move-object v4, v3

    const-string v5, "; domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 557
    move v4, v2

    if-eqz v4, :cond_1

    .line 558
    move-object v4, v3

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    :cond_1
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 563
    :cond_2
    move-object v4, v3

    const-string v5, "; path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 565
    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->secure:Z

    if-eqz v4, :cond_3

    .line 566
    move-object v4, v3

    const-string v5, "; secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    :cond_3
    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v4, :cond_4

    .line 570
    move-object v4, v3

    const-string v5, "; httponly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    return-object v1

    .line 551
    :cond_5
    move-object v4, v3

    const-string v5, "; expires="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public value()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
