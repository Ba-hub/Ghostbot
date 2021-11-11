.class Lio/socket/engineio/client/Socket$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/client/Socket$1;->this$0:Lio/socket/engineio/client/Socket;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 136
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/Socket$1;->this$0:Lio/socket/engineio/client/Socket;

    move-object v4, v2

    array-length v4, v4

    if-lez v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    invoke-static {v3, v4, v5}, Lio/socket/engineio/client/Socket;->access$000(Lio/socket/engineio/client/Socket;J)V

    .line 137
    return-void

    .line 136
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method
