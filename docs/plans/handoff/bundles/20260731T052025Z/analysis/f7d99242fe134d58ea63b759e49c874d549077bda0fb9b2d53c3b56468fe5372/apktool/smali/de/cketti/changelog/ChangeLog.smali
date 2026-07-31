.class public final Lde/cketti/changelog/ChangeLog;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final changeLogProvider:Lcom/google/zxing/BinaryBitmap;

.field public currentVersionCode:I

.field public firstVersionCode:I

.field public lastVersionCode:I

.field public final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/zxing/BinaryBitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lde/cketti/changelog/ChangeLog;->preferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p3, p0, Lde/cketti/changelog/ChangeLog;->changeLogProvider:Lcom/google/zxing/BinaryBitmap;

    .line 7
    .line 8
    return-void
.end method
