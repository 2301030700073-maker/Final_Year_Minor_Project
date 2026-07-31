.class public interface abstract Lcoil3/network/ConnectivityChecker;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/ConnectivityChecker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/network/ConnectivityChecker$Companion;

.field public static final ONLINE:Lcoil3/network/ConnectivityChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcoil3/network/ConnectivityChecker$Companion;->$$INSTANCE:Lcoil3/network/ConnectivityChecker$Companion;

    .line 2
    .line 3
    sput-object v0, Lcoil3/network/ConnectivityChecker;->Companion:Lcoil3/network/ConnectivityChecker$Companion;

    .line 4
    .line 5
    new-instance v0, Lcoil3/network/ConnectivityChecker$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcoil3/network/ConnectivityChecker;->ONLINE:Lcoil3/network/ConnectivityChecker;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract isOnline()Z
.end method
