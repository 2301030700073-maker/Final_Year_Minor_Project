.class public Lcom/android/contacts/compat/ProviderStatusCompat;
.super Ljava/lang/Object;
.source "ProviderStatusCompat.java"


# static fields
.field public static final STATUS_BUSY:I

.field public static final STATUS_EMPTY:I

.field public static final USE_CURRENT_VERSION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/compat/ProviderStatusCompat;->USE_CURRENT_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 38
    :goto_0
    sput v0, Lcom/android/contacts/compat/ProviderStatusCompat;->STATUS_EMPTY:I

    .line 40
    sget-boolean v0, Lcom/android/contacts/compat/ProviderStatusCompat;->USE_CURRENT_VERSION:Z

    const/4 v0, 0x1

    .line 41
    sput v0, Lcom/android/contacts/compat/ProviderStatusCompat;->STATUS_BUSY:I

    return-void
.end method
