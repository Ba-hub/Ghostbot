.class public final Lcom/etechd/l3mon/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etechd/l3mon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "color"
.end annotation


# static fields
.field public static final colorAccent:I = 0x7f040002

.field public static final colorPrimary:I = 0x7f040000

.field public static final colorPrimaryDark:I = 0x7f040001


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
