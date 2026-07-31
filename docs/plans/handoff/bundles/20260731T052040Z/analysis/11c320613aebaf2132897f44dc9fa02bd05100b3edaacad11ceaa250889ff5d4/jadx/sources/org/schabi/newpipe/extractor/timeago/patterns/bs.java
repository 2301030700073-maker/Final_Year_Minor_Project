package org.schabi.newpipe.extractor.timeago.patterns;

import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class bs extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekundi", "sekunde", "sekundu"};
    private static final String[] MINUTES = {"minuta", "minute", "minutu"};
    private static final String[] HOURS = {CmcdHeadersFactory.STREAMING_FORMAT_HLS, "sat", "sata", "sati"};
    private static final String[] DAYS = {"dan", "dana"};
    private static final String[] WEEKS = {"sedm."};
    private static final String[] MONTHS = {"mj.", "mjesec", "mjeseca", "mjeseci"};
    private static final String[] YEARS = {"godina", "godine", "godinu"};
    private static final bs INSTANCE = new bs();

    private bs() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static bs getInstance() {
        return INSTANCE;
    }
}
