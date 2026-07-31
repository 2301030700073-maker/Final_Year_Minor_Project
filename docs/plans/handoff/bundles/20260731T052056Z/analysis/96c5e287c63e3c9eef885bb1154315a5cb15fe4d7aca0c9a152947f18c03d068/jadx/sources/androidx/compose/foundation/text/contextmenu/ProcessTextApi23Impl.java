package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.ProcessTextKey;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ProcessTextApi23Impl {
    public static final ChipKt$$ExternalSyntheticLambda2 processTextActivitiesQuery = new ChipKt$$ExternalSyntheticLambda2(8);
    public static final ProcessTextApi23Impl$$ExternalSyntheticLambda1 onClickProcessTextItem = new ProcessTextApi23Impl$$ExternalSyntheticLambda1(0);

    /* renamed from: addProcessedTextContextMenuItems-UAq72N0, reason: not valid java name */
    public static final void m201addProcessedTextContextMenuItemsUAq72N0(TextContextMenuBuilderScope textContextMenuBuilderScope, final Context context, final boolean z, final CharSequence charSequence, final long j) {
        if (TextRange.m641getCollapsedimpl(j) || charSequence.length() == 0) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        List list = (List) processTextActivitiesQuery.invoke(context);
        if (list.isEmpty()) {
            return;
        }
        textContextMenuBuilderScope.separator();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            final ResolveInfo resolveInfo = (ResolveInfo) list.get(i);
            textContextMenuBuilderScope.components.add(new TextContextMenuItem(new ProcessTextKey(i), resolveInfo.loadLabel(packageManager).toString(), 0, new Function1() { // from class: androidx.compose.foundation.text.contextmenu.ProcessText_androidKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ProcessTextApi23Impl.onClickProcessTextItem.invoke(context, resolveInfo, Boolean.valueOf(z), charSequence, new TextRange(j));
                    ((TextContextMenuSession) obj).close();
                    return Unit.INSTANCE;
                }
            }));
        }
        textContextMenuBuilderScope.separator();
    }
}
