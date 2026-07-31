.class public final synthetic Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/Preference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/Preference;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    iput-object v2, v0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, v0, Landroidx/preference/Preference;->mIconResId:I

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v1, v0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda3;->f$2:Z

    .line 20
    .line 21
    if-eq v1, p0, :cond_1

    .line 22
    .line 23
    iput-boolean p0, v0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
