.class final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lokio/ByteString;

.field static final PREFIX_DIRTY:Lokio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lokio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lokio/ByteString;

.field sourceCount:I

.field upstream:Lokio/Source;

.field final upstreamBuffer:Lokio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    .line 46
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    .locals 13

    .prologue
    .line 107
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v9, v1

    new-instance v10, Lokio/Buffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    iput-object v10, v9, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 94
    move-object v9, v1

    new-instance v10, Lokio/Buffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    iput-object v10, v9, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    .line 108
    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 109
    move-object v9, v1

    move-object v10, v3

    iput-object v10, v9, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 110
    move-object v9, v1

    move-object v10, v3

    if-nez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 111
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 112
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 113
    move-object v9, v1

    move-wide v10, v7

    iput-wide v10, v9, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 114
    return-void

    .line 110
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v1

    const-string v11, "rw"

    invoke-direct {v9, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v8

    .line 127
    new-instance v8, Lokhttp3/internal/cache2/Relay;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v6

    move-object v11, v2

    const-wide/16 v12, 0x0

    move-object v14, v3

    move-wide v15, v4

    invoke-direct/range {v9 .. v16}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    move-object v7, v8

    .line 130
    move-object v8, v6

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 131
    move-object v8, v7

    sget-object v9, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    invoke-direct/range {v8 .. v13}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 133
    move-object v8, v7

    move-object v1, v8

    return-object v1
.end method

.method public static read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v1, p0

    new-instance v12, Ljava/io/RandomAccessFile;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v1

    const-string v15, "rw"

    invoke-direct {v13, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v12

    .line 145
    new-instance v12, Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v2

    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-direct {v13, v14}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v3, v12

    .line 148
    new-instance v12, Lokio/Buffer;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    move-object v4, v12

    .line 149
    move-object v12, v3

    const-wide/16 v13, 0x0

    move-object v15, v4

    const-wide/16 v16, 0x20

    invoke-virtual/range {v12 .. v17}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 150
    move-object v12, v4

    sget-object v13, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {v13}, Lokio/ByteString;->size()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v12

    move-object v5, v12

    .line 151
    move-object v12, v5

    sget-object v13, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {v12, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/io/IOException;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const-string v14, "unreadable cache file"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 152
    :cond_0
    move-object v12, v4

    invoke-virtual {v12}, Lokio/Buffer;->readLong()J

    move-result-wide v12

    move-wide v6, v12

    .line 153
    move-object v12, v4

    invoke-virtual {v12}, Lokio/Buffer;->readLong()J

    move-result-wide v12

    move-wide v8, v12

    .line 156
    new-instance v12, Lokio/Buffer;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    move-object v10, v12

    .line 157
    move-object v12, v3

    const-wide/16 v13, 0x20

    move-wide v15, v6

    add-long/2addr v13, v15

    move-object v15, v10

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 158
    move-object v12, v10

    invoke-virtual {v12}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v12

    move-object v11, v12

    .line 161
    new-instance v12, Lokhttp3/internal/cache2/Relay;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v2

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    move-object/from16 v18, v11

    const-wide/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    move-object v1, v12

    return-object v1
.end method

.method private writeHeader(Lokio/ByteString;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    new-instance v8, Lokio/Buffer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v6, v8

    .line 167
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v8

    .line 168
    move-object v8, v6

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v8

    .line 169
    move-object v8, v6

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v8

    .line 170
    move-object v8, v6

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x20

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 172
    :cond_0
    new-instance v8, Lokhttp3/internal/cache2/FileOperator;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-direct {v9, v10}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v7, v8

    .line 173
    move-object v8, v7

    const-wide/16 v9, 0x0

    move-object v11, v6

    const-wide/16 v12, 0x20

    invoke-virtual/range {v8 .. v13}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 174
    return-void
.end method

.method private writeMetadata(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-wide v1, p1

    new-instance v5, Lokio/Buffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    move-object v3, v5

    .line 178
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v5, v6}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v5

    .line 180
    new-instance v5, Lokhttp3/internal/cache2/FileOperator;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-direct {v6, v7}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v4, v5

    .line 181
    move-object v5, v4

    const-wide/16 v6, 0x20

    move-wide v8, v1

    add-long/2addr v6, v8

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 182
    return-void
.end method


# virtual methods
.method commit(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v1, p0

    move-wide v2, p1

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 187
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 190
    move-object v6, v1

    sget-object v7, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    move-wide v8, v2

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 191
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 194
    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    monitor-enter v6

    .line 195
    move-object v6, v1

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 196
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method isClosed()Z
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public metadata()Lokio/ByteString;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    move-object v0, v1

    return-object v0
.end method

.method public newSource()Lokio/Source;
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 217
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 219
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    new-instance v3, Lokhttp3/internal/cache2/Relay$RelaySource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    move-object v0, v3

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method
