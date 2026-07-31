.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public enterAnim:I

.field public exitAnim:I

.field public popUpToId:I

.field public popUpToInclusive:Z

.field public popUpToRoute:Ljava/lang/String;

.field public popUpToSaveState:Z

.field public restoreState:Z

.field public singleTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavOptions;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v2, p0, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/navigation/NavOptions;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    .line 12
    .line 13
    iget-boolean v6, p0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    .line 14
    .line 15
    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 16
    .line 17
    iget v8, p0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 18
    .line 19
    sget p0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 20
    .line 21
    const-string p0, "android-app://androidx.navigation/"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v9, -0x1

    .line 32
    const/4 v10, -0x1

    .line 33
    invoke-direct/range {v1 .. v10}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    new-instance v1, Landroidx/navigation/NavOptions;

    .line 40
    .line 41
    iget-boolean v3, p0, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    .line 42
    .line 43
    iget v4, p0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    .line 44
    .line 45
    iget-boolean v5, p0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    .line 46
    .line 47
    iget-boolean v6, p0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    .line 48
    .line 49
    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 50
    .line 51
    iget v8, p0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 52
    .line 53
    const/4 v9, -0x1

    .line 54
    const/4 v10, -0x1

    .line 55
    invoke-direct/range {v1 .. v10}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method
