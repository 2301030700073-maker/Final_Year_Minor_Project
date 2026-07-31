package org.wikimedia.testkitchen.event;

import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.Request;
import org.wikimedia.testkitchen.config.sampling.SampleConfig;
import org.wikimedia.testkitchen.context.AgentData;
import org.wikimedia.testkitchen.context.ClientData;
import org.wikimedia.testkitchen.context.MediawikiData;
import org.wikimedia.testkitchen.context.PageData;
import org.wikimedia.testkitchen.context.PerformerData;
import org.wikimedia.testkitchen.instrument.Funnel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Event {
    public static final Companion Companion = new Companion();
    public final String action;
    public final String actionContext;
    public final String actionSource;
    public final String actionSubtype;
    public final AgentData agentData;
    public final String elementFriendlyName;
    public final String elementId;
    public final EventExperiment experiment;
    public final String funnelEntryToken;
    public final Integer funnelEventSequencePosition;
    public final String funnelName;
    public final String instrumentName;
    public final MediawikiData mediawikiData;
    public final Meta meta;
    public final PageData pageData;
    public final PerformerData performerData;
    public SampleConfig sample;
    public final String schema;
    public final String timestamp;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Event$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Event(int i, String str, String str2, Meta meta, String str3, AgentData agentData, PageData pageData, MediawikiData mediawikiData, PerformerData performerData, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Integer num, EventExperiment eventExperiment, SampleConfig sampleConfig) {
        if (4 != (i & 4)) {
            TuplesKt.throwMissingFieldException(i, 4, Event$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.schema = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.timestamp = null;
        } else {
            this.timestamp = str2;
        }
        this.meta = meta;
        if ((i & 8) == 0) {
            this.instrumentName = null;
        } else {
            this.instrumentName = str3;
        }
        if ((i & 16) == 0) {
            this.agentData = null;
        } else {
            this.agentData = agentData;
        }
        if ((i & 32) == 0) {
            this.pageData = null;
        } else {
            this.pageData = pageData;
        }
        if ((i & 64) == 0) {
            this.mediawikiData = null;
        } else {
            this.mediawikiData = mediawikiData;
        }
        if ((i & 128) == 0) {
            this.performerData = null;
        } else {
            this.performerData = performerData;
        }
        if ((i & 256) == 0) {
            this.action = null;
        } else {
            this.action = str4;
        }
        if ((i & 512) == 0) {
            this.actionSubtype = null;
        } else {
            this.actionSubtype = str5;
        }
        if ((i & 1024) == 0) {
            this.actionSource = null;
        } else {
            this.actionSource = str6;
        }
        if ((i & 2048) == 0) {
            this.actionContext = null;
        } else {
            this.actionContext = str7;
        }
        if ((i & 4096) == 0) {
            this.elementId = null;
        } else {
            this.elementId = str8;
        }
        if ((i & 8192) == 0) {
            this.elementFriendlyName = null;
        } else {
            this.elementFriendlyName = str9;
        }
        if ((i & 16384) == 0) {
            this.funnelName = null;
        } else {
            this.funnelName = str10;
        }
        if ((32768 & i) == 0) {
            this.funnelEntryToken = null;
        } else {
            this.funnelEntryToken = str11;
        }
        if ((65536 & i) == 0) {
            this.funnelEventSequencePosition = null;
        } else {
            this.funnelEventSequencePosition = num;
        }
        if ((131072 & i) == 0) {
            this.experiment = null;
        } else {
            this.experiment = eventExperiment;
        }
        if ((i & 262144) == 0) {
            this.sample = null;
        } else {
            this.sample = sampleConfig;
        }
    }

    public Event(String str, SVGAndroidRenderer sVGAndroidRenderer, ClientData clientData, Request.Builder builder, SampleConfig sampleConfig) {
        this.meta = new Meta();
        this.schema = "/analytics/product_metrics/app/base/2.0.0";
        this.sample = sampleConfig;
        this.timestamp = str;
        if (sVGAndroidRenderer != null) {
            this.instrumentName = (String) sVGAndroidRenderer.canvas;
            Funnel funnel = (Funnel) sVGAndroidRenderer.state;
            if (funnel != null) {
                this.funnelName = funnel.name;
                this.funnelEntryToken = funnel.token;
                this.funnelEventSequencePosition = Integer.valueOf(funnel._sequence);
            }
            Request.Builder builder2 = (Request.Builder) sVGAndroidRenderer.stateStack;
            if (builder2 != null && ((Boolean) ((Function0) builder2.body).invoke()).booleanValue()) {
                this.experiment = new EventExperiment((String) builder2.url, (String) builder2.method, (String) builder2.tags, (String) builder2.headers);
            }
        }
        this.agentData = clientData.agentData;
        this.pageData = clientData.pageData;
        this.mediawikiData = clientData.mediawikiData;
        this.performerData = clientData.performerData;
        this.action = (String) builder.method;
        this.actionContext = (String) builder.body;
        this.actionSource = (String) builder.headers;
        this.actionSubtype = (String) builder.url;
        this.elementId = (String) builder.tags;
        this.elementFriendlyName = null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Meta {
        public static final Companion Companion = new Companion();
        public final String stream;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Event$Meta$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Meta(int i, String str) {
            if ((i & 1) == 0) {
                this.stream = "";
            } else {
                this.stream = str;
            }
        }

        public Meta() {
            this.stream = "product_metrics.app_base";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EventExperiment {
        public static final Companion Companion = new Companion();
        public final String assigned;
        public final String coordinator;
        public final String enrolled;
        public final String samplingUnit;
        public final String subjectId;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Event$EventExperiment$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ EventExperiment(int i, String str, String str2, String str3, String str4, String str5) {
            if ((i & 1) == 0) {
                this.assigned = "";
            } else {
                this.assigned = str;
            }
            if ((i & 2) == 0) {
                this.enrolled = "";
            } else {
                this.enrolled = str2;
            }
            if ((i & 4) == 0) {
                this.coordinator = "default";
            } else {
                this.coordinator = str3;
            }
            if ((i & 8) == 0) {
                this.samplingUnit = null;
            } else {
                this.samplingUnit = str4;
            }
            if ((i & 16) == 0) {
                this.subjectId = null;
            } else {
                this.subjectId = str5;
            }
        }

        public EventExperiment(String str, String str2, String str3, String str4) {
            str.getClass();
            this.assigned = str;
            this.enrolled = str2;
            this.coordinator = str3;
            this.samplingUnit = null;
            this.subjectId = str4;
        }
    }
}
