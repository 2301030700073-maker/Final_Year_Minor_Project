.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:Landroidx/compose/ui/autofill/ContentType;

.field public final synthetic f$11:I

.field public final synthetic f$13:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroidx/compose/foundation/text/KeyboardOptions;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    iput-boolean p8, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$8:Z

    .line 21
    .line 22
    iput-object p10, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 23
    .line 24
    iput-object p11, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$10:Landroidx/compose/ui/autofill/ContentType;

    .line 25
    .line 26
    iput p12, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$11:I

    .line 27
    .line 28
    iput p13, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$13:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$11:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-object v2, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 26
    .line 27
    iget-boolean v4, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 28
    .line 29
    iget-object v5, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v6, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/foundation/layout/PaddingValues;

    .line 32
    .line 33
    iget-boolean v7, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 34
    .line 35
    iget-boolean v8, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$8:Z

    .line 36
    .line 37
    iget-object v9, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 38
    .line 39
    iget-object v10, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$10:Landroidx/compose/ui/autofill/ContentType;

    .line 40
    .line 41
    iget v13, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt$$ExternalSyntheticLambda1;->f$13:I

    .line 42
    .line 43
    invoke-static/range {v0 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method
