.class public final Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;->INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
