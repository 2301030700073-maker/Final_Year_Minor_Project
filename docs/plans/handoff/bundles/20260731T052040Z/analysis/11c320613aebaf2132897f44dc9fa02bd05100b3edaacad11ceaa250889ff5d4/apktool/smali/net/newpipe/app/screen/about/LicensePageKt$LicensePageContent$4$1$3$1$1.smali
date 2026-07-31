.class public final Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $library:Lnet/newpipe/app/model/Library;

.field public final synthetic $licenseToShow$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $shouldShowLicenseDialog$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lnet/newpipe/app/model/Library;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$library:Lnet/newpipe/app/model/Library;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$licenseToShow$delegate:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$shouldShowLicenseDialog$delegate:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$library:Lnet/newpipe/app/model/Library;

    .line 2
    .line 3
    iget-object v1, v0, Lnet/newpipe/app/model/Library;->name:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lnet/newpipe/app/model/Library;->website:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lnet/newpipe/app/model/Library;->licenses:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Lnet/newpipe/app/model/License;

    .line 16
    .line 17
    invoke-direct {v3, v1, v0, v2}, Lnet/newpipe/app/model/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$licenseToShow$delegate:Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$4$1$3$1$1;->$shouldShowLicenseDialog$delegate:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
