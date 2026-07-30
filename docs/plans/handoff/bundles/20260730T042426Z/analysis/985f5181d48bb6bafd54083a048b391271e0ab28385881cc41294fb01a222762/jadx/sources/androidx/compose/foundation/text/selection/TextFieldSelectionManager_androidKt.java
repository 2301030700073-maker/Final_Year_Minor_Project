package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.contextmenu.ContextMenuState_androidKt;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.text.TextRange;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: TextFieldSelectionManager.android.kt */
/* loaded from: classes.dex */
public abstract class TextFieldSelectionManager_androidKt {
    public static final boolean isShiftPressed(PointerEvent pointerEvent) {
        return false;
    }

    public static final Modifier textFieldMagnifier(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager) {
        return !Magnifier_androidKt.isPlatformMagnifierSupported$default(0, 1, null) ? modifier : ComposedModifierKt.composed$default(modifier, null, new TextFieldSelectionManager_androidKt$textFieldMagnifier$1(textFieldSelectionManager), 1, null);
    }

    public static final Function1 contextMenuBuilder(final TextFieldSelectionManager textFieldSelectionManager, final ContextMenuState contextMenuState) {
        return new Function1() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$contextMenuBuilder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((ContextMenuScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(ContextMenuScope contextMenuScope) {
                ClipboardManager clipboardManager$foundation_release;
                TextFieldSelectionManager.this.getVisualTransformation$foundation_release();
                boolean m2119getCollapsedimpl = TextRange.m2119getCollapsedimpl(TextFieldSelectionManager.this.getValue$foundation_release().m2247getSelectiond9O1mEE());
                final ContextMenuState contextMenuState2 = contextMenuState;
                final TextContextMenuItems textContextMenuItems = TextContextMenuItems.Cut;
                boolean z = !m2119getCollapsedimpl && TextFieldSelectionManager.this.getEditable();
                final TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                ContextMenuScope.item$default(contextMenuScope, new Function2() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$TextItem$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        return invoke((Composer) obj, ((Number) obj2).intValue());
                    }

                    public final String invoke(Composer composer, int i) {
                        composer.startReplaceGroup(-1451087197);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1451087197, i, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (ContextMenu.android.kt:98)");
                        }
                        String resolvedString = TextContextMenuItems.this.resolvedString(composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer.endReplaceGroup();
                        return resolvedString;
                    }
                }, null, z, null, new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m574invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m574invoke() {
                        textFieldSelectionManager2.cut$foundation_release();
                        ContextMenuState_androidKt.close(ContextMenuState.this);
                    }
                }, 10, null);
                final ContextMenuState contextMenuState3 = contextMenuState;
                final TextContextMenuItems textContextMenuItems2 = TextContextMenuItems.Copy;
                boolean z2 = !m2119getCollapsedimpl;
                final TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                ContextMenuScope.item$default(contextMenuScope, new Function2() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$TextItem$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        return invoke((Composer) obj, ((Number) obj2).intValue());
                    }

                    public final String invoke(Composer composer, int i) {
                        composer.startReplaceGroup(-1451087197);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1451087197, i, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (ContextMenu.android.kt:98)");
                        }
                        String resolvedString = TextContextMenuItems.this.resolvedString(composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer.endReplaceGroup();
                        return resolvedString;
                    }
                }, null, z2, null, new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m575invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m575invoke() {
                        textFieldSelectionManager3.copy$foundation_release(false);
                        ContextMenuState_androidKt.close(ContextMenuState.this);
                    }
                }, 10, null);
                final ContextMenuState contextMenuState4 = contextMenuState;
                final TextContextMenuItems textContextMenuItems3 = TextContextMenuItems.Paste;
                boolean z3 = TextFieldSelectionManager.this.getEditable() && (clipboardManager$foundation_release = TextFieldSelectionManager.this.getClipboardManager$foundation_release()) != null && clipboardManager$foundation_release.hasText();
                final TextFieldSelectionManager textFieldSelectionManager4 = TextFieldSelectionManager.this;
                ContextMenuScope.item$default(contextMenuScope, new Function2() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$TextItem$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        return invoke((Composer) obj, ((Number) obj2).intValue());
                    }

                    public final String invoke(Composer composer, int i) {
                        composer.startReplaceGroup(-1451087197);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1451087197, i, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (ContextMenu.android.kt:98)");
                        }
                        String resolvedString = TextContextMenuItems.this.resolvedString(composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer.endReplaceGroup();
                        return resolvedString;
                    }
                }, null, z3, null, new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m576invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m576invoke() {
                        textFieldSelectionManager4.paste$foundation_release();
                        ContextMenuState_androidKt.close(ContextMenuState.this);
                    }
                }, 10, null);
                final ContextMenuState contextMenuState5 = contextMenuState;
                final TextContextMenuItems textContextMenuItems4 = TextContextMenuItems.SelectAll;
                boolean z4 = TextRange.m2121getLengthimpl(TextFieldSelectionManager.this.getValue$foundation_release().m2247getSelectiond9O1mEE()) != TextFieldSelectionManager.this.getValue$foundation_release().getText().length();
                final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                ContextMenuScope.item$default(contextMenuScope, new Function2() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$TextItem$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        return invoke((Composer) obj, ((Number) obj2).intValue());
                    }

                    public final String invoke(Composer composer, int i) {
                        composer.startReplaceGroup(-1451087197);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1451087197, i, -1, "androidx.compose.foundation.text.TextItem.<anonymous> (ContextMenu.android.kt:98)");
                        }
                        String resolvedString = TextContextMenuItems.this.resolvedString(composer, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer.endReplaceGroup();
                        return resolvedString;
                    }
                }, null, z4, null, new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$contextMenuBuilder$1$invoke$$inlined$TextItem$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m577invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m577invoke() {
                        textFieldSelectionManager5.selectAll$foundation_release();
                        ContextMenuState_androidKt.close(ContextMenuState.this);
                    }
                }, 10, null);
            }
        };
    }
}
