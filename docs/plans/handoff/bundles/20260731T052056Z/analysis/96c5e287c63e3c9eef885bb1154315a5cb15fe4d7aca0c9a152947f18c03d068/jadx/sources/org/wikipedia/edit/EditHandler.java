package org.wikipedia.edit;

import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.page.Page;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.Section;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHandler implements CommunicationBridge.JSEventListener {
    public Page currentPage;
    public final PageFragment fragment;

    public EditHandler(PageFragment pageFragment, CommunicationBridge communicationBridge) {
        communicationBridge.getClass();
        this.fragment = pageFragment;
        communicationBridge.addListener("edit_section", this);
        communicationBridge.addListener("add_title_description", this);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMessage(java.lang.String r12, kotlinx.serialization.json.JsonObject r13) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditHandler.onMessage(java.lang.String, kotlinx.serialization.json.JsonObject):void");
    }

    public final void startEditingSection(int i, String str) {
        Page page = this.currentPage;
        if (page != null) {
            if (i < 0 || i >= page.sections.size()) {
                L.LEVEL_W.log("Attempting to edit a mismatched section ID.", null);
                return;
            }
            this.fragment.onRequestEditSection(((Section) page.sections.get(i)).id, ((Section) page.sections.get(i)).anchor, page.title, str);
        }
    }
}
