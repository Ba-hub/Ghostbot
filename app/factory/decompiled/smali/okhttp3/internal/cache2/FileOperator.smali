.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final byteArray:[B

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    const/16 v3, 0x2000

    new-array v3, v3, [B

    iput-object v3, v2, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    .line 41
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 46
    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 85
    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    move v6, v8

    .line 88
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lokio/Buffer;->write([BII)Lokio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 89
    move-wide v8, v1

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v1, v8

    .line 90
    move-wide v8, v4

    move v10, v6

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v4, v8

    .line 92
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 80
    :cond_1
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 83
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v9, 0x2000

    move-wide v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 84
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    move-wide v10, v1

    invoke-virtual {v8, v9, v10, v11}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    new-instance v8, Ljava/io/EOFException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    move-object v8, v7

    throw v8

    .line 95
    :cond_2
    return-void
.end method

.method public write(JLokio/Buffer;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v5

    move-object v12, v4

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v10

    .line 52
    :cond_1
    :goto_0
    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 55
    const-wide/16 v10, 0x2000

    move-wide v12, v5

    :try_start_0
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    move v7, v10

    .line 56
    move-object v10, v4

    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Lokio/Buffer;->read([BII)I

    move-result v10

    .line 57
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 61
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v11, v1

    iget-object v11, v11, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    move-wide v12, v2

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v10

    move v8, v10

    .line 62
    move-wide v10, v2

    move v12, v8

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v2, v10

    .line 63
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 65
    move-wide v10, v5

    move v12, v7

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v5, v10

    .line 67
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    goto :goto_0

    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v10

    move-object v10, v9

    throw v10

    .line 70
    :cond_3
    return-void
.end method
