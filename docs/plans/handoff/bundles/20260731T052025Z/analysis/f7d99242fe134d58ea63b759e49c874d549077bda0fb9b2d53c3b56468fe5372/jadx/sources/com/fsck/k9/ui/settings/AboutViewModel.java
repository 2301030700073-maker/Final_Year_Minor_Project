package com.fsck.k9.ui.settings;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.settings.AboutContract$Effect;
import com.fsck.k9.ui.settings.AboutContract$Event;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AboutViewModel extends BaseViewModel {
    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        AboutContract$Event aboutContract$Event = (AboutContract$Event) obj;
        aboutContract$Event.getClass();
        if (aboutContract$Event instanceof AboutContract$Event.OnChangeLogClick) {
            emitEffect(AboutContract$Effect.OpenChangeLog.INSTANCE);
        } else if (aboutContract$Event instanceof AboutContract$Event.OnSectionContentClick) {
            emitEffect(new AboutContract$Effect.OpenUrl(((AboutContract$Event.OnSectionContentClick) aboutContract$Event).url));
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }
}
