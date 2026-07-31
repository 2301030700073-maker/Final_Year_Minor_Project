.class public final Lnet/thunderbird/feature/account/AccountIdFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;


# instance fields
.field public final fromUuid:Lnet/thunderbird/feature/account/AccountIdFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/thunderbird/feature/account/AccountIdFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/account/AccountIdFactory$1;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/thunderbird/feature/account/AccountIdFactory;->fromUuid:Lnet/thunderbird/feature/account/AccountIdFactory$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/account/AccountIdFactory;->fromUuid:Lnet/thunderbird/feature/account/AccountIdFactory$1;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/jsoup/nodes/NodeUtils;->parse(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/AccountIdFactory$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lnet/thunderbird/feature/account/AccountId;

    .line 15
    .line 16
    return-object p0
.end method
