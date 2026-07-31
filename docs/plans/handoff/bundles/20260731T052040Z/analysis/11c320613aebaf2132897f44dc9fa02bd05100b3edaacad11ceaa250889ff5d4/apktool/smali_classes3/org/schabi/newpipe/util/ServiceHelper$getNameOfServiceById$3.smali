.class public final synthetic Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;

    .line 2
    .line 3
    const-string v4, "getName()Ljava/lang/String;"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 8
    .line 9
    const-string v3, "getName"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;->INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
