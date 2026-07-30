.class public Lcom/android/contacts/editor/EditorIntents;
.super Ljava/lang/Object;
.source "EditorIntents.java"


# direct methods
.method public static createEditContactIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;J)Landroid/content/Intent;
    .locals 3

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-static {v0, p2}, Lcom/android/contacts/editor/EditorIntents;->putMaterialPalette(Landroid/content/Intent;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 50
    invoke-static {v0, p3, p4}, Lcom/android/contacts/editor/EditorIntents;->putPhotoId(Landroid/content/Intent;J)V

    return-object v0
.end method

.method public static createEditContactIntentForRawContact(Landroid/content/Context;Landroid/net/Uri;JLcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "raw_contact_id_to_display_alone"

    .line 70
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    invoke-static {v0, p4}, Lcom/android/contacts/editor/EditorIntents;->putMaterialPalette(Landroid/content/Intent;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    return-object v0
.end method

.method public static createEditOtherRawContactIntent(Landroid/content/Context;Landroid/net/Uri;JLjava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "J",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x2800000

    .line 99
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "addToDefaultDirectory"

    const-string p1, ""

    .line 101
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "raw_contact_id_to_display_alone"

    .line 102
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 105
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data"

    .line 106
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static createViewLinkedContactsIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;
    .locals 2

    const-wide/16 v0, -0x1

    .line 56
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/editor/EditorIntents;->createEditContactIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;J)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "showReadOnly"

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private static putMaterialPalette(Landroid/content/Intent;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    iget v0, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    const-string v1, "material_palette_primary_color"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget p1, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    const-string v0, "material_palette_secondary_color"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static putPhotoId(Landroid/content/Intent;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "photo_id"

    .line 124
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-void
.end method
