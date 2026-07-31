.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 15
    .line 16
    iput p7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$8:I

    .line 17
    .line 18
    iput p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$9:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$8:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-object v3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean v4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 26
    .line 27
    iget-boolean v5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$7:Z

    .line 28
    .line 29
    iget v8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda1;->f$9:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedEmailAddress(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;II)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
