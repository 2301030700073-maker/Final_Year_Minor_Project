.class public final Lcom/braze/reactbridge/FeatureFlagUtilKt;
.super Ljava/lang/Object;
.source "FeatureFlagUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "FEATURE_FLAG_PROPERTIES_TYPE",
        "",
        "FEATURE_FLAG_PROPERTIES_VALUE",
        "FEATURE_FLAG_PROPERTIES_TYPE_STRING",
        "FEATURE_FLAG_PROPERTIES_TYPE_NUMBER",
        "FEATURE_FLAG_PROPERTIES_TYPE_BOOLEAN",
        "convertFeatureFlag",
        "Lcom/facebook/react/bridge/WritableMap;",
        "ff",
        "Lcom/braze/models/FeatureFlag;",
        "braze_react-native-sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FEATURE_FLAG_PROPERTIES_TYPE:Ljava/lang/String; = "type"

.field public static final FEATURE_FLAG_PROPERTIES_TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final FEATURE_FLAG_PROPERTIES_TYPE_NUMBER:Ljava/lang/String; = "number"

.field public static final FEATURE_FLAG_PROPERTIES_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final FEATURE_FLAG_PROPERTIES_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public static final convertFeatureFlag(Lcom/braze/models/FeatureFlag;)Lcom/facebook/react/bridge/WritableMap;
    .locals 9

    const-string v0, "ff"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 17
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/braze/models/FeatureFlag;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "enabled"

    invoke-virtual {p0}, Lcom/braze/models/FeatureFlag;->getEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/braze/models/FeatureFlag;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/braze/models/FeatureFlag;->getProperties()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    const-string v5, ""

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 30
    invoke-interface {v5, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x3da724b7

    const-string/jumbo v8, "value"

    if-eq v6, v7, :cond_6

    const v7, -0x352a9fef    # -6991880.5f

    if-eq v6, v7, :cond_5

    const v7, 0x3db6c28

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 41
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/braze/models/FeatureFlag;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 42
    invoke-interface {v5, v8, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 31
    :cond_5
    const-string/jumbo v6, "string"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/braze/models/FeatureFlag;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v8, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_6
    const-string/jumbo v6, "number"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    .line 36
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/braze/models/FeatureFlag;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 37
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 46
    :cond_8
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    .line 49
    :cond_9
    const-string/jumbo p0, "properties"

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
