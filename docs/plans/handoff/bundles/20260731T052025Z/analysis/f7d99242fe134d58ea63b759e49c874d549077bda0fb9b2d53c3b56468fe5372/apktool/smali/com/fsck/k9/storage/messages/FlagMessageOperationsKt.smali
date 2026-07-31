.class public abstract Lcom/fsck/k9/storage/messages/FlagMessageOperationsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SPECIAL_FLAGS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lnet/thunderbird/core/common/mail/Flag;

    .line 3
    .line 4
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/fsck/k9/storage/messages/FlagMessageOperationsKt;->SPECIAL_FLAGS:Ljava/util/Set;

    .line 29
    .line 30
    return-void
.end method
