.class public final Lcom/skydoves/landscapist/coil3/RememberCoilImageStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final rememberCoilImageState(Lcom/skydoves/landscapist/coil3/CoilImageState;Ljava/lang/Object;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skydoves/landscapist/coil3/CoilImageState;",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation

    .line 1
    and-int/lit8 p3, p4, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/skydoves/landscapist/coil3/CoilImageState$None;->INSTANCE:Lcom/skydoves/landscapist/coil3/CoilImageState$None;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p4, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 25
    .line 26
    if-ne p3, p1, :cond_3

    .line 27
    .line 28
    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    check-cast p3, Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    return-object p3
.end method
