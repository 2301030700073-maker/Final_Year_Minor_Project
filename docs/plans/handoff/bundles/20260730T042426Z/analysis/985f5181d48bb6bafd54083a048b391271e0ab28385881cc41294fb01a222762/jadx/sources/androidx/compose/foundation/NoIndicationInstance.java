package androidx.compose.foundation;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indication.kt */
/* loaded from: classes.dex */
public final class NoIndicationInstance implements IndicationInstance {
    public static final NoIndicationInstance INSTANCE = new NoIndicationInstance();

    private NoIndicationInstance() {
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void drawIndication(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
    }
}
