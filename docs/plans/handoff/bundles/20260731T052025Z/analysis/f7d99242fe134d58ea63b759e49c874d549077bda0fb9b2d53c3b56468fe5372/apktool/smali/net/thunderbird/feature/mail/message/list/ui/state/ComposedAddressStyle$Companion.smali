.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;

.field public static final AllBold:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;->$$INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;-><init>(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v0, v1, v2

    .line 19
    .line 20
    invoke-static {v1}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;->AllBold:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 25
    .line 26
    return-void
.end method
