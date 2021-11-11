.class public final Lokhttp3/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source "WebSocketProtocol.java"


# static fields
.field static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field static final B0_FLAG_FIN:I = 0x80

.field static final B0_FLAG_RSV1:I = 0x40

.field static final B0_FLAG_RSV2:I = 0x20

.field static final B0_FLAG_RSV3:I = 0x10

.field static final B0_MASK_OPCODE:I = 0xf

.field static final B1_FLAG_MASK:I = 0x80

.field static final B1_MASK_LENGTH:I = 0x7f

.field static final CLOSE_ABNORMAL_TERMINATION:I = 0x3ee

.field static final CLOSE_CLIENT_GOING_AWAY:I = 0x3e9

.field static final CLOSE_MESSAGE_MAX:J = 0x7bL

.field static final CLOSE_NO_STATUS_CODE:I = 0x3ed

.field static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea

.field static final OPCODE_BINARY:I = 0x2

.field static final OPCODE_CONTINUATION:I = 0x0

.field static final OPCODE_CONTROL_CLOSE:I = 0x8

.field static final OPCODE_CONTROL_PING:I = 0x9

.field static final OPCODE_CONTROL_PONG:I = 0xa

.field static final OPCODE_FLAG_CONTROL:I = 0x8

.field static final OPCODE_TEXT:I = 0x1

.field static final PAYLOAD_BYTE_MAX:J = 0x7dL

.field static final PAYLOAD_LONG:I = 0x7f

.field static final PAYLOAD_SHORT:I = 0x7e

.field static final PAYLOAD_SHORT_MAX:J = 0xffffL


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "No instances."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static acceptHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static closeCodeExceptionMessage(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    move v0, p0

    move v1, v0

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_1

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code must be in range [1000,5000): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_1
    move v1, v0

    const/16 v2, 0x3ec

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x3ee

    if-le v1, v2, :cond_3

    :cond_2
    move v1, v0

    const/16 v2, 0x3f4

    if-lt v1, v2, :cond_4

    move v1, v0

    const/16 v2, 0xbb7

    if-gt v1, v2, :cond_4

    .line 112
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is reserved and may not be used."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 114
    :cond_4
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method static toggleMask([BJ[BJ)V
    .locals 15

    .prologue
    .line 101
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v10, v4

    array-length v10, v10

    move v7, v10

    .line 102
    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    int-to-long v10, v10

    move-wide v12, v2

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 103
    move-wide v10, v5

    move v12, v7

    int-to-long v12, v12

    rem-long/2addr v10, v12

    long-to-int v10, v10

    move v9, v10

    .line 104
    move-object v10, v1

    move v11, v8

    move-object v12, v1

    move v13, v8

    aget-byte v12, v12, v13

    move-object v13, v4

    move v14, v9

    aget-byte v13, v13, v14

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 102
    add-int/lit8 v8, v8, 0x1

    move-wide v10, v5

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v5, v10

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method static validateCloseCode(I)V
    .locals 6

    .prologue
    .line 119
    move v0, p0

    move v2, v0

    invoke-static {v2}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 120
    move-object v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    return-void
.end method
