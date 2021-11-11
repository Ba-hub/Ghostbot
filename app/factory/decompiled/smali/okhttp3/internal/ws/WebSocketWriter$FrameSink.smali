.class final Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lokhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/WebSocketWriter;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v1, p0

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v2, v5

    monitor-enter v4

    .line 263
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v5, v1

    iget v5, v5, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v8, v1

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 264
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 266
    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 267
    return-void

    .line 264
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public flush()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    move-object v1, p0

    move-object v4, v1

    iget-boolean v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v2, v5

    monitor-enter v4

    .line 249
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v5, v1

    iget v5, v5, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-object v6, v1

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v6, v6, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v8, v1

    iget-boolean v8, v8, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 250
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v1, v1, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object v10, v1

    iget-boolean v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/IOException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "closed"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 229
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    move-object v11, v2

    move-wide v12, v3

    invoke-virtual {v10, v11, v12, v13}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 232
    move-object v10, v1

    iget-boolean v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    if-eqz v10, :cond_2

    move-object v10, v1

    iget-wide v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 234
    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    move-object v12, v1

    iget-wide v12, v12, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v14, 0x2000

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 236
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v10

    move-wide v6, v10

    .line 237
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move v10, v5

    if-nez v10, :cond_1

    .line 238
    move-object v10, v1

    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v8, v11

    monitor-enter v10

    .line 239
    move-object v10, v1

    :try_start_0
    iget-object v10, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v11, v1

    iget v11, v11, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    move-wide v12, v6

    move-object v14, v1

    iget-boolean v14, v14, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 240
    move-object v10, v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 243
    :cond_1
    return-void

    .line 234
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v8

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v9

    throw v10
.end method
