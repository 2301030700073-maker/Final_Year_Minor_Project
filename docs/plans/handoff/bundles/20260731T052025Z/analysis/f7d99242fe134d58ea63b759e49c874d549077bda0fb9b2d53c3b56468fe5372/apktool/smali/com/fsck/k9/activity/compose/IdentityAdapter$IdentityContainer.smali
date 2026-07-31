.class public final Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final identity:Lnet/thunderbird/core/android/account/Identity;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/Identity;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    return-void
.end method
