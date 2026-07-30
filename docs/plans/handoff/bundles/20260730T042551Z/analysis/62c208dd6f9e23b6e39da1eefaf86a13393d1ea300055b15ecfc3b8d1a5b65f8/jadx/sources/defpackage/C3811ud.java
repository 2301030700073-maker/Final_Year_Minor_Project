package defpackage;

import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* renamed from: ud, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3811ud implements InterfaceC3787uB {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f15936do = Logger.getLogger(BI.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final D4 f15937do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SM f15938do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f15939do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3380nG f15940do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4109zg f15941do;

    public C3811ud(Executor executor, D4 d4, SM sm, InterfaceC4109zg interfaceC4109zg, InterfaceC3380nG interfaceC3380nG) {
        this.f15939do = executor;
        this.f15937do = d4;
        this.f15938do = sm;
        this.f15941do = interfaceC4109zg;
        this.f15940do = interfaceC3380nG;
    }

    @Override // defpackage.InterfaceC3787uB
    /* renamed from: do */
    public final void mo8377do(final EI ei, final W3 w3, final C4075z4 c4075z4) {
        this.f15939do.execute(new Runnable() { // from class: rd
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3794uI abstractC3794uI = c4075z4;
                EI ei2 = ei;
                AbstractC3696sg abstractC3696sg = w3;
                C3811ud c3811ud = C3811ud.this;
                c3811ud.getClass();
                Logger logger = C3811ud.f15936do;
                try {
                    InterfaceC3735tI mo348do = c3811ud.f15937do.mo348do(abstractC3794uI.mo8381if());
                    if (mo348do == null) {
                        String format = String.format("Transport backend '%s' is not registered", abstractC3794uI.mo8381if());
                        logger.warning(format);
                        ei2.mo444case(new IllegalArgumentException(format));
                    } else {
                        c3811ud.f15940do.mo6440new(new C3693sd(c3811ud, abstractC3794uI, mo348do.mo6877do(abstractC3696sg)));
                        ei2.mo444case(null);
                    }
                } catch (Exception e) {
                    logger.warning("Error scheduling event " + e.getMessage());
                    ei2.mo444case(e);
                }
            }
        });
    }
}
