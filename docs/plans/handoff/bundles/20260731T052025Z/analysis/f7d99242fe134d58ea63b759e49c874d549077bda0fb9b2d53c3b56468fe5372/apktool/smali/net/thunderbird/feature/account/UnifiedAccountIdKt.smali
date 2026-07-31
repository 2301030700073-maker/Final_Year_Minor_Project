.class public abstract Lnet/thunderbird/feature/account/UnifiedAccountIdKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/AccountId;

    .line 2
    .line 3
    sget-object v1, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/AccountId;-><init>(Lkotlin/uuid/Uuid;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/thunderbird/feature/account/UnifiedAccountIdKt;->UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;

    .line 9
    .line 10
    return-void
.end method
