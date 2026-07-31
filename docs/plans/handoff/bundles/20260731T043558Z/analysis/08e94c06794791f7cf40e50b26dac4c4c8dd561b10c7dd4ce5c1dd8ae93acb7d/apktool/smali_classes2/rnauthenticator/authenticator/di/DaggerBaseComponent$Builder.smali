.class public final Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrnauthenticator/authenticator/di/DaggerBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseModule:Lrnauthenticator/authenticator/di/BaseModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrnauthenticator/authenticator/di/DaggerBaseComponent-IA;)V
    .locals 0

    invoke-direct {p0}, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public baseModule(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;
    .locals 0

    .line 51
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrnauthenticator/authenticator/di/BaseModule;

    iput-object p1, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    return-object p0
.end method

.method public build()Lrnauthenticator/authenticator/di/BaseComponent;
    .locals 3

    .line 56
    iget-object v0, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    const-class v1, Lrnauthenticator/authenticator/di/BaseModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lrnauthenticator/authenticator/di/DaggerBaseComponent;

    iget-object v1, p0, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;->baseModule:Lrnauthenticator/authenticator/di/BaseModule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;-><init>(Lrnauthenticator/authenticator/di/BaseModule;Lrnauthenticator/authenticator/di/DaggerBaseComponent-IA;)V

    return-object v0
.end method
