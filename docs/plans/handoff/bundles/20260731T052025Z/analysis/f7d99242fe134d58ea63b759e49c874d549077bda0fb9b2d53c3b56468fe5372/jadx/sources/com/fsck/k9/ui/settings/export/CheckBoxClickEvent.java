package com.fsck.k9.ui.settings.export;

import android.view.View;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.feature.settings.p000import.ui.ImportCheckBoxViewHolder;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment$$ExternalSyntheticLambda6;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import kotlin.Function;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CheckBoxClickEvent extends ClickEventHook {
    public final /* synthetic */ int $r8$classId;
    public final Function action;

    public /* synthetic */ CheckBoxClickEvent(Function function, int i) {
        this.$r8$classId = i;
        this.action = function;
    }

    @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
    public final View onBind(RecyclerView.ViewHolder viewHolder) {
        switch (this.$r8$classId) {
            case 0:
                if (viewHolder instanceof CheckBoxViewHolder) {
                    return ((CheckBoxViewHolder) viewHolder).checkBox;
                }
                return null;
            default:
                if (viewHolder instanceof ImportCheckBoxViewHolder) {
                    return ((ImportCheckBoxViewHolder) viewHolder).checkBox;
                }
                return null;
        }
    }

    @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
    public final void onClick(View view, int i, FastAdapter fastAdapter, AbstractItem abstractItem) {
        int i2 = this.$r8$classId;
        Function function = this.action;
        switch (i2) {
            case 0:
                ((ComposerKt$$ExternalSyntheticLambda0) function).invoke(Integer.valueOf(i), Boolean.valueOf(!((CheckBoxItem) abstractItem).isSelected));
                break;
            default:
                ((SettingsImportFragment$$ExternalSyntheticLambda6) function).invoke(Integer.valueOf(i));
                break;
        }
    }
}
