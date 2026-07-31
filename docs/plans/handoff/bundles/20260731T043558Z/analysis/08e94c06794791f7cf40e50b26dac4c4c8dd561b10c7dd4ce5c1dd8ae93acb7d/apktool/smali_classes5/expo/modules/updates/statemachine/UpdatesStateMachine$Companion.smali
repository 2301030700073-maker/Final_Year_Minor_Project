.class public final Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;
.super Ljava/lang/Object;
.source "UpdatesStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/statemachine/UpdatesStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;",
        "",
        "<init>",
        "()V",
        "updatesStateAllowedEvents",
        "",
        "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
        "",
        "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
        "getUpdatesStateAllowedEvents",
        "()Ljava/util/Map;",
        "updatesStateTransitions",
        "getUpdatesStateTransitions",
        "reduceContext",
        "Lexpo/modules/updates/statemachine/UpdatesStateContext;",
        "context",
        "event",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$reduceContext(Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;Lexpo/modules/updates/statemachine/UpdatesStateContext;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;->reduceContext(Lexpo/modules/updates/statemachine/UpdatesStateContext;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object p0

    return-object p0
.end method

.method private final reduceContext(Lexpo/modules/updates/statemachine/UpdatesStateContext;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 18

    move-object/from16 v0, p2

    .line 131
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$StartStartup;

    if-eqz v1, :cond_0

    const/16 v16, 0x1ffe

    const/16 v17, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :cond_0
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$EndStartup;

    if-eqz v1, :cond_1

    const/16 v16, 0x1ffe

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :cond_1
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;

    if-eqz v1, :cond_2

    const/16 v16, 0x1ff7

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :cond_2
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    if-eqz v1, :cond_3

    .line 146
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    const/16 v16, 0x975

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    .line 140
    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :cond_3
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;

    if-eqz v1, :cond_4

    .line 152
    new-instance v12, Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;->getCommitTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v12, v0}, Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;-><init>(Ljava/util/Date;)V

    .line 154
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    const/16 v16, 0x975

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    .line 148
    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :cond_4
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;

    if-eqz v1, :cond_5

    .line 159
    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;->getManifest()Lorg/json/JSONObject;

    move-result-object v9

    .line 162
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/16 v15, 0x975

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p1

    .line 156
    invoke-static/range {v1 .. v16}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :cond_5
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;

    if-eqz v1, :cond_6

    .line 166
    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;->getError()Lexpo/modules/updates/statemachine/UpdatesStateError;

    move-result-object v12

    .line 167
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/16 v15, 0xbf7

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p1

    .line 164
    invoke-static/range {v1 .. v16}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :cond_6
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;

    if-eqz v1, :cond_7

    const/16 v16, 0x1fef

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :cond_7
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;

    if-eqz v1, :cond_8

    const/16 v16, 0x17eb

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_8
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithRollback;

    if-eqz v1, :cond_9

    const/16 v16, 0x17eb

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_9
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;

    if-eqz v1, :cond_a

    .line 185
    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;->getManifest()Lorg/json/JSONObject;

    move-result-object v9

    .line 186
    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;->getManifest()Lorg/json/JSONObject;

    move-result-object v10

    const/16 v15, 0x1469

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p1

    .line 182
    invoke-static/range {v1 .. v16}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_a
    instance-of v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;

    if-eqz v1, :cond_b

    .line 193
    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;->getError()Lexpo/modules/updates/statemachine/UpdatesStateError;

    move-result-object v13

    const/16 v15, 0x17ef

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p1

    .line 191
    invoke-static/range {v1 .. v16}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_b
    instance-of v0, v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;

    if-eqz v0, :cond_c

    const/16 v15, 0x1fdf

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    :goto_0
    return-object v0

    .line 130
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getUpdatesStateAllowedEvents()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            "Ljava/util/Set<",
            "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
            ">;>;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->access$getUpdatesStateAllowedEvents$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatesStateTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->access$getUpdatesStateTransitions$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
