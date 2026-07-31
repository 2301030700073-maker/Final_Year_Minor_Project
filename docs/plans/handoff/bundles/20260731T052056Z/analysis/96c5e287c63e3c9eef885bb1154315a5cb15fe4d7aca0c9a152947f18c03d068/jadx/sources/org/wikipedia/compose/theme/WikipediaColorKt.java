package org.wikipedia.compose.theme;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WikipediaColorKt {
    public static final WikipediaColor BlackColors;
    public static final WikipediaColor DarkColors;
    public static final WikipediaColor LightColors;
    public static final StaticProvidableCompositionLocal LocalWikipediaColor = new StaticProvidableCompositionLocal(0, new AppDatabase$$ExternalSyntheticLambda0(3));
    public static final WikipediaColor SepiaColors;

    static {
        long j = ComposeColors.Gray700;
        long j2 = ComposeColors.White;
        long j3 = ComposeColors.Gray100;
        long j4 = ComposeColors.Gray400;
        long j5 = ComposeColors.Gray500;
        long j6 = ComposeColors.Gray600;
        long j7 = ComposeColors.Gray200;
        long j8 = ComposeColors.Blue600;
        long j9 = ComposeColors.Green700;
        long j10 = ComposeColors.Red700;
        long j11 = ComposeColors.Yellow700;
        long j12 = ComposeColors.Yellow500;
        long j13 = ComposeColors.Orange500;
        long j14 = ComposeColors.Blue300_15;
        long j15 = ComposeColors.Black_30;
        LightColors = new WikipediaColor(false, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15);
        long j16 = ComposeColors.Gray675;
        long j17 = ComposeColors.Gray300;
        long j18 = ComposeColors.Gray650;
        long j19 = ComposeColors.Blue300;
        long j20 = ComposeColors.Green600;
        long j21 = ComposeColors.Red500;
        long j22 = ComposeColors.Yellow500_40;
        long j23 = ComposeColors.Orange500_50;
        long j24 = ComposeColors.Blue600_30;
        long j25 = ComposeColors.Black_70;
        DarkColors = new WikipediaColor(true, j7, j, j16, j5, j4, j17, j18, j19, j20, j21, j13, j22, j23, j24, j25);
        BlackColors = new WikipediaColor(true, j7, ComposeColors.Black, j, j5, j5, j17, j16, j19, j20, j21, j13, j22, j23, j24, j25);
        SepiaColors = new WikipediaColor(false, j, ComposeColors.Beige100, ComposeColors.Beige300, ComposeColors.Taupe200, ComposeColors.Taupe600, j6, ComposeColors.Beige400, j8, j9, j10, j11, j12, j13, j14, j15);
    }
}
