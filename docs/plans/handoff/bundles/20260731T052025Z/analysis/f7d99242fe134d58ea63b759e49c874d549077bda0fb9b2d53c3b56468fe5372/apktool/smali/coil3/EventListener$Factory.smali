.class public interface abstract Lcoil3/EventListener$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/EventListener$Factory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/EventListener$Factory$Companion;

.field public static final NONE:Lcoil3/EventListener$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcoil3/EventListener$Factory$Companion;->$$INSTANCE:Lcoil3/EventListener$Factory$Companion;

    .line 2
    .line 3
    sput-object v0, Lcoil3/EventListener$Factory;->Companion:Lcoil3/EventListener$Factory$Companion;

    .line 4
    .line 5
    new-instance v0, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcoil3/EventListener$Factory;->NONE:Lcoil3/EventListener$Factory;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract create(Lcoil3/request/ImageRequest;)Lcoil3/EventListener;
.end method
