package org.wikimedia.testkitchen.context;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ClientData {
    public static final Companion Companion = new Companion();
    public final AgentData agentData;
    public final MediawikiData mediawikiData;
    public final PageData pageData;
    public final PerformerData performerData;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ClientData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ClientData(int i, AgentData agentData, PageData pageData, MediawikiData mediawikiData, PerformerData performerData) {
        if ((i & 1) == 0) {
            this.agentData = null;
        } else {
            this.agentData = agentData;
        }
        if ((i & 2) == 0) {
            this.pageData = null;
        } else {
            this.pageData = pageData;
        }
        if ((i & 4) == 0) {
            this.mediawikiData = null;
        } else {
            this.mediawikiData = mediawikiData;
        }
        if ((i & 8) == 0) {
            this.performerData = null;
        } else {
            this.performerData = performerData;
        }
    }

    public ClientData(AgentData agentData, PageData pageData, MediawikiData mediawikiData, PerformerData performerData) {
        this.agentData = agentData;
        this.pageData = pageData;
        this.mediawikiData = mediawikiData;
        this.performerData = performerData;
    }
}
