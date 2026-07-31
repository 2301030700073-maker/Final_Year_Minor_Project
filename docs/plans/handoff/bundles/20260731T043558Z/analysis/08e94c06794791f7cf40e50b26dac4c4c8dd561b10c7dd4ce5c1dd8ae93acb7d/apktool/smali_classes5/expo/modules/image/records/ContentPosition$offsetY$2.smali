.class final synthetic Lexpo/modules/image/records/ContentPosition$offsetY$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ContentPosition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/records/ContentPosition;->offsetY(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/lang/Float;",
        "Landroid/graphics/RectF;",
        "Landroid/graphics/RectF;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/image/records/ContentPosition$offsetY$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/records/ContentPosition$offsetY$2;

    invoke-direct {v0}, Lexpo/modules/image/records/ContentPosition$offsetY$2;-><init>()V

    sput-object v0, Lexpo/modules/image/records/ContentPosition$offsetY$2;->INSTANCE:Lexpo/modules/image/records/ContentPosition$offsetY$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lexpo/modules/image/ImageUtilsKt;

    const-string v4, "calcYTranslation(FLandroid/graphics/RectF;Landroid/graphics/RectF;ZZ)F"

    const/4 v5, 0x1

    const/4 v1, 0x5

    const-string v3, "calcYTranslation"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(FLandroid/graphics/RectF;Landroid/graphics/RectF;ZZ)Ljava/lang/Float;
    .locals 1

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p2, p3, p4, p5}, Lexpo/modules/image/ImageUtilsKt;->calcYTranslation(FLandroid/graphics/RectF;Landroid/graphics/RectF;ZZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 75
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move-object v2, p2

    check-cast v2, Landroid/graphics/RectF;

    move-object v3, p3

    check-cast v3, Landroid/graphics/RectF;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lexpo/modules/image/records/ContentPosition$offsetY$2;->invoke(FLandroid/graphics/RectF;Landroid/graphics/RectF;ZZ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
