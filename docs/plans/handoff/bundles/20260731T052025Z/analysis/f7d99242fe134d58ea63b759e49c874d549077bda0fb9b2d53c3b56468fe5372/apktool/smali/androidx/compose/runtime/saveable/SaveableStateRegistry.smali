.class public interface abstract Landroidx/compose/runtime/saveable/SaveableStateRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract canBeSaved(Ljava/lang/Object;)Z
.end method

.method public abstract consumeRestored(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract performSave()Ljava/util/Map;
.end method

.method public abstract registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
.end method
