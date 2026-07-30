package defpackage;

import com.facebook.ads.AdError;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zzns;
import com.google.android.gms.internal.measurement.zznx;
import com.google.android.gms.internal.measurement.zzoj;
import com.google.android.gms.internal.measurement.zzok;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzqa;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* renamed from: sQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3684sQ {
    public static final SR<Boolean> A;
    public static final SR<Boolean> B;
    public static final SR<Boolean> C;
    public static final SR<Boolean> D;
    public static final SR<Boolean> E;
    public static final SR<Integer> F;
    public static final SR<Boolean> G;
    public static final SR<Boolean> H;
    public static final SR<Boolean> I;
    public static final SR<Boolean> J;
    public static final SR<Boolean> K;
    public static final SR<Boolean> L;
    public static final SR<String> M;
    public static final SR<Boolean> N;
    public static final SR<Boolean> O;
    public static final SR<Boolean> P;
    public static final SR<Boolean> Q;
    public static final SR<Boolean> R;
    public static final SR<Boolean> S;
    public static final SR<Boolean> T;
    public static final SR<Boolean> U;
    public static final SR<Boolean> V;
    public static final SR<Boolean> W;
    public static final SR<Boolean> X;
    public static final SR<Boolean> Y;
    public static final SR<Boolean> Z;
    public static final SR<String> a;
    public static final SR<Boolean> a0;

    /* renamed from: abstract, reason: not valid java name */
    public static final SR<Integer> f15451abstract;
    public static final SR<Long> b;
    public static final SR<Boolean> b0;

    /* renamed from: break, reason: not valid java name */
    public static final SR<Integer> f15452break;
    public static final SR<Integer> c;
    public static final SR<Boolean> c0;

    /* renamed from: case, reason: not valid java name */
    public static final SR<String> f15453case;

    /* renamed from: catch, reason: not valid java name */
    public static final SR<Integer> f15454catch;

    /* renamed from: class, reason: not valid java name */
    public static final SR<Integer> f15455class;

    /* renamed from: const, reason: not valid java name */
    public static final SR<Integer> f15456const;

    /* renamed from: continue, reason: not valid java name */
    public static final SR<Long> f15457continue;
    public static final SR<Double> d;
    public static final SR<Boolean> d0;

    /* renamed from: default, reason: not valid java name */
    public static final SR<Long> f15458default;

    /* renamed from: do, reason: not valid java name */
    public static final SR<Long> f15459do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final List<SR<?>> f15460do = DesugarCollections.synchronizedList(new ArrayList());
    public static final SR<Integer> e;
    public static final SR<Boolean> e0;

    /* renamed from: else, reason: not valid java name */
    public static final SR<Integer> f15461else;

    /* renamed from: extends, reason: not valid java name */
    public static final SR<Long> f15462extends;
    public static final SR<Integer> f;
    public static final SR<Boolean> f0;

    /* renamed from: final, reason: not valid java name */
    public static final SR<Integer> f15463final;

    /* renamed from: finally, reason: not valid java name */
    public static final SR<Long> f15464finally;

    /* renamed from: for, reason: not valid java name */
    public static final SR<Long> f15465for;
    public static final SR<Integer> g;
    public static final SR<Boolean> g0;

    /* renamed from: goto, reason: not valid java name */
    public static final SR<Integer> f15466goto;
    public static final SR<Integer> h;
    public static final SR<Boolean> h0;
    public static final SR<Long> i;
    public static final SR<Boolean> i0;

    /* renamed from: if, reason: not valid java name */
    public static final SR<Long> f15467if;

    /* renamed from: implements, reason: not valid java name */
    public static final SR<Integer> f15468implements;

    /* renamed from: import, reason: not valid java name */
    public static final SR<String> f15469import;

    /* renamed from: instanceof, reason: not valid java name */
    public static final SR<Long> f15470instanceof;

    /* renamed from: interface, reason: not valid java name */
    public static final SR<Integer> f15471interface;
    public static final SR<Long> j;
    public static final SR<Boolean> j0;
    public static final SR<Integer> k;
    public static final SR<Boolean> k0;
    public static final SR<Integer> l;
    public static final SR<Boolean> l0;
    public static final SR<String> m;
    public static final SR<Boolean> m0;
    public static final SR<String> n;
    public static final SR<Boolean> n0;

    /* renamed from: native, reason: not valid java name */
    public static final SR<Long> f15472native;

    /* renamed from: new, reason: not valid java name */
    public static final SR<Long> f15473new;
    public static final SR<String> o;
    public static final SR<Boolean> o0;
    public static final SR<Long> p;
    public static final SR<Boolean> p0;

    /* renamed from: package, reason: not valid java name */
    public static final SR<Long> f15474package;

    /* renamed from: private, reason: not valid java name */
    public static final SR<Long> f15475private;

    /* renamed from: protected, reason: not valid java name */
    public static final SR<Integer> f15476protected;

    /* renamed from: public, reason: not valid java name */
    public static final SR<Long> f15477public;
    public static final SR<String> q;
    public static final SR<Boolean> q0;
    public static final SR<String> r;
    public static final SR<Boolean> r0;

    /* renamed from: return, reason: not valid java name */
    public static final SR<Long> f15478return;
    public static final SR<String> s;
    public static final SR<Boolean> s0;

    /* renamed from: static, reason: not valid java name */
    public static final SR<Long> f15479static;

    /* renamed from: strictfp, reason: not valid java name */
    public static final SR<Long> f15480strictfp;

    /* renamed from: super, reason: not valid java name */
    public static final SR<Integer> f15481super;

    /* renamed from: switch, reason: not valid java name */
    public static final SR<Long> f15482switch;

    /* renamed from: synchronized, reason: not valid java name */
    public static final SR<Boolean> f15483synchronized;
    public static final SR<String> t;
    public static final SR<Boolean> t0;

    /* renamed from: this, reason: not valid java name */
    public static final SR<Integer> f15484this;

    /* renamed from: throw, reason: not valid java name */
    public static final SR<Integer> f15485throw;

    /* renamed from: throws, reason: not valid java name */
    public static final SR<Long> f15486throws;

    /* renamed from: transient, reason: not valid java name */
    public static final SR<Integer> f15487transient;

    /* renamed from: try, reason: not valid java name */
    public static final SR<String> f15488try;
    public static final SR<Long> u;
    public static final SR<Boolean> u0;
    public static final SR<Integer> v;
    public static final SR<Boolean> v0;

    /* renamed from: volatile, reason: not valid java name */
    public static final SR<Integer> f15489volatile;
    public static final SR<Boolean> w;
    public static final SR<Boolean> w0;

    /* renamed from: while, reason: not valid java name */
    public static final SR<String> f15490while;
    public static final SR<Boolean> x;
    public static final SR<Boolean> x0;
    public static final SR<Boolean> y;
    public static final SR<Boolean> z;

    static {
        DesugarCollections.synchronizedSet(new HashSet());
        final int i2 = 4;
        final int i3 = 0;
        f15459do = m8130do("measurement.ad_id_cache_time", 10000L, new C0820cd(i2), false);
        f15467if = m8130do("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L, new C0189Ei(i2), false);
        final int i4 = 6;
        f15465for = m8130do("measurement.monitoring.sample_period_millis", 86400000L, new CQ(i4), false);
        final int i5 = 7;
        f15473new = m8130do("measurement.config.cache_time", 86400000L, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i5) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        f15488try = m8130do("measurement.config.url_scheme", "https", new C0820cd(13), false);
        f15453case = m8130do("measurement.config.url_authority", "app-measurement.com", new Gy(11), false);
        f15461else = m8130do("measurement.upload.max_bundles", 100, new C0189Ei(11), false);
        Integer valueOf = Integer.valueOf(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        f15466goto = m8130do("measurement.upload.max_batch_size", valueOf, new QJ(14), false);
        f15484this = m8130do("measurement.upload.max_bundle_size", valueOf, new CQ(1), false);
        final int i6 = 2;
        f15452break = m8130do("measurement.upload.max_events_per_bundle", 1000, new HQ(2), false);
        f15454catch = m8130do("measurement.upload.max_events_per_day", 100000, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i6) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        f15455class = m8130do("measurement.upload.max_error_events_per_day", 1000, new HQ(3), false);
        final int i7 = 8;
        f15456const = m8130do("measurement.upload.max_public_events_per_day", 50000, new C0820cd(i7), false);
        f15463final = m8130do("measurement.upload.max_conversions_per_day", 10000, new LQ(i6), false);
        final int i8 = 10;
        f15481super = m8130do("measurement.upload.max_realtime_events_per_day", 10, new CQ(i2), false);
        final int i9 = 5;
        f15485throw = m8130do("measurement.store.max_stored_events_per_app", 100000, new QJ(i9), false);
        f15490while = m8130do("measurement.upload.url", "https://app-measurement.com/a", new C0570Vq(i5), false);
        f15469import = m8130do("measurement.sgtm.google_signal.url", "https://app-measurement.com/s", new Gy(5), false);
        f15472native = m8130do("measurement.upload.backoff_period", 43200000L, new HQ(4), false);
        f15477public = m8130do("measurement.upload.window_interval", 3600000L, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i2) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        f15478return = m8130do("measurement.upload.interval", 3600000L, new CQ(i9), false);
        f15479static = m8130do("measurement.upload.realtime_upload_interval", 10000L, new QJ(i4), false);
        f15482switch = m8130do("measurement.upload.debug_upload_interval", 1000L, new C0570Vq(i7), false);
        f15486throws = m8130do("measurement.upload.minimum_delay", 500L, new Gy(6), false);
        f15458default = m8130do("measurement.alarm_manager.minimum_interval", 60000L, new HQ(5), false);
        f15462extends = m8130do("measurement.upload.stale_data_deletion_interval", 86400000L, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i9) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        f15464finally = m8130do("measurement.upload.refresh_blacklisted_config_interval", 604800000L, new LQ(3), false);
        f15474package = m8130do("measurement.upload.initial_upload_delay_time", 15000L, new C0189Ei(i9), false);
        f15475private = m8130do("measurement.upload.retry_time", 1800000L, new QJ(i5), false);
        f15451abstract = m8130do("measurement.upload.retry_count", 6, new Gy(7), false);
        f15457continue = m8130do("measurement.upload.max_queue_time", 518400000L, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i4) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        final int i10 = 9;
        f15480strictfp = m8130do("measurement.upload.google_signal_max_queue_time", 300000L, new C0570Vq(i10), false);
        f15489volatile = m8130do("measurement.lifetimevalue.max_currency_tracked", 4, new C0189Ei(i4), false);
        f15471interface = m8130do("measurement.audience.filter_result_max_count", 200, new HQ(6), false);
        f15476protected = m8130do("measurement.upload.max_public_user_properties", 100, null, false);
        f15487transient = m8130do("measurement.upload.max_event_name_cardinality", Integer.valueOf(AdError.SERVER_ERROR_CODE), null, false);
        f15468implements = m8130do("measurement.upload.max_public_event_params", 100, null, false);
        f15470instanceof = m8130do("measurement.service_client.idle_disconnect_millis", Long.valueOf(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS), new C0820cd(11), false);
        Boolean bool = Boolean.FALSE;
        f15483synchronized = m8130do("measurement.test.boolean_flag", bool, new LQ(i2), false);
        a = m8130do("measurement.test.string_flag", "---", new CQ(i5), false);
        b = m8130do("measurement.test.long_flag", -1L, new QJ(i7), false);
        m8130do("measurement.test.cached_long_flag", -1L, new Gy(8), true);
        c = m8130do("measurement.test.int_flag", -2, new HQ(7), false);
        d = m8130do("measurement.test.double_flag", Double.valueOf(-3.0d), new C0820cd(12), false);
        e = m8130do("measurement.experiment.max_ids", 50, new C0189Ei(i5), false);
        f = m8130do("measurement.upload.max_item_scoped_custom_parameters", 27, new CQ(i7), false);
        g = m8130do("measurement.upload.max_event_parameter_value_length", 500, new QJ(i10), true);
        h = m8130do("measurement.max_bundles_per_iteration", 100, new C0570Vq(11), false);
        i = m8130do("measurement.sdk.attribution.cache.ttl", 604800000L, new Gy(9), false);
        j = m8130do("measurement.redaction.app_instance_id.ttl", 7200000L, new HQ(8), false);
        k = m8130do("measurement.rb.attribution.client.min_ad_services_version", 7, new LQ(i9), false);
        l = m8130do("measurement.dma_consent.max_daily_dcu_realtime_events", 1, new C0189Ei(i7), false);
        m = m8130do("measurement.rb.attribution.uri_scheme", "https", new QJ(i8), false);
        n = m8130do("measurement.rb.attribution.uri_authority", "google-analytics.com", new Gy(10), false);
        o = m8130do("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion", new CQ(i10), false);
        p = m8130do("measurement.session.engagement_interval", 3600000L, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i10) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        q = m8130do("measurement.rb.attribution.app_allowlist", "com.labpixies.flood,com.sofascore.results,games.spearmint.triplecrush,com.block.juggle,io.supercent.linkedcubic,com.cdtg.gunsound,com.corestudios.storemanagementidle,com.cdgames.fidget3d,io.supercent.burgeridle,io.supercent.pizzaidle,jp.ne.ibis.ibispaintx.app,com.dencreak.dlcalculator,com.ebay.kleinanzeigen,de.wetteronline.wetterapp,com.game.shape.shift,com.champion.cubes,bubbleshooter.orig,com.wolt.android,com.master.hotelmaster,com.games.bus.arrival,com.playstrom.dop2,com.huuuge.casino.slots,com.ig.spider.fighting,com.jura.coloring.page,com.rikkogame.ragdoll2,com.ludo.king,com.sigma.prank.sound.haircut,com.crazy.block.robo.monster.cliffs.craft,com.fugo.wow,com.maps.locator.gps.gpstracker.phone,com.gamovation.tileclub,com.pronetis.ironball2,com.meesho.supply,pdf.pdfreader.viewer.editor.free,com.dino.race.master,com.ig.moto.racing,ai.photo.enhancer.photoclear,com.duolingo,com.candle.magic_piano,com.free.vpn.super.hotspot.open,sg.bigo.live,com.cdg.tictactoe,com.zhiliaoapp.musically.go,com.wildspike.wormszone,com.mast.status.video.edit,com.vyroai.photoeditorone,com.pujiagames.deeeersimulator,com.superbinogo.jungleboyadventure,com.trustedapp.pdfreaderpdfviewer,com.artimind.aiart.artgenerator.artavatar,de.cellular.ottohybrid,com.zeptolab.cats.google,in.crossy.daily_crossword", new C0570Vq(12), false);
        r = m8130do("measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot", new C0189Ei(i10), false);
        s = m8130do("measurement.rb.attribution.event_params", "value|currency", new HQ(9), false);
        t = m8130do("measurement.rb.attribution.query_parameters_to_remove", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new LQ(6), false);
        u = m8130do("measurement.rb.attribution.max_queue_time", 1209600000L, new CQ(i8), false);
        m8130do("measurement.rb.attribution.max_trigger_uris_queried_at_once", 0, new QJ(11), false);
        v = m8130do("measurement.rb.max_trigger_registrations_per_day", 0, new C0570Vq(13), false);
        Boolean bool2 = Boolean.TRUE;
        w = m8130do("measurement.config.bundle_for_all_apps_on_backgrounded", bool2, new HQ(10), false);
        x = m8130do("measurement.config.notify_trigger_uris_on_backgrounded", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i8) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        int i11 = 15;
        m8130do("measurement.collection.log_event_and_bundle_v2", bool2, new C0820cd(i11), false);
        y = m8130do("measurement.quality.checksum", bool, null, false);
        z = m8130do("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, new C0189Ei(i8), false);
        A = m8130do("measurement.audience.refresh_event_count_filters_timestamp", bool, new CQ(11), false);
        B = m8130do("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, new C0570Vq(14), true);
        C = m8130do("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, new Gy(12), false);
        final int i12 = 11;
        D = m8130do("measurement.integration.disable_firebase_instance_id", bool, new HQ(11), false);
        E = m8130do("measurement.collection.service.update_with_analytics_fix", bool, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i12) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        F = m8130do("measurement.service.storage_consent_support_version", 203600, new LQ(i5), false);
        G = m8130do("measurement.service.store_null_safelist", bool2, new QJ(13), false);
        int i13 = 16;
        H = m8130do("measurement.service.store_safelist", bool2, new C0820cd(i13), false);
        I = m8130do("measurement.session_stitching_token_enabled", bool, new Gy(13), false);
        int i14 = 12;
        J = m8130do("measurement.sgtm.service", bool2, new CQ(i14), true);
        K = m8130do("measurement.sgtm.preview_mode_enabled", bool2, new C0570Vq(i11), true);
        L = m8130do("measurement.sgtm.rollout_percentage_fix", bool, new C0189Ei(i14), true);
        M = m8130do("measurement.sgtm.app_allowlist", "de.zalando.mobile.internal,de.zalando.mobile.internal.debug,de.zalando.lounge.dev,grit.storytel.app,com.rbc.mobile.android,com.rbc.mobile.android,com.dylvian.mango.activities,com.home24.android,com.home24.android.staging,se.lf.mobile.android,se.lf.mobile.android.beta,se.lf.mobile.android.rc,se.lf.mobile.android.test,se.lf.mobile.android.test.debug,com.boots.flagship.android,com.boots.flagshiproi.android,de.zalando.mobile,com.trivago,com.getyourguide.android,es.mobail.meliarewards,se.nansen.coop.debug,se.nansen.coop,se.coop.coop.qa,com.booking,com.google.firebaseengage,com.mse.mseapp.dev,com.mse.mseapp,pl.eobuwie.eobuwieapp,br.com.eventim.mobile.app.Android,ch.ticketcorner.mobile.app.Android,de.eventim.mobile.app.Android,dk.billetlugen.mobile.app.Android,nl.eventim.mobile.app.Android,com.asos.app,com.blueshieldca.prod,dk.magnetix.tivoliapp,matas.matas.internal,nl.omoda,com.thetrainline,com.simo.androidtest,de.aboutyou.mobile.app,com.hometogo,de.casamundo.casamundomobile,it.casevacanz,eu.coolblue.shop,com.stihl.app,com.indeed.android.jobsearch,com.homeretailgroup.argos.android,com.dylvian.mango.activities.pre,se.nansen.coop.qa", new HQ(12), true);
        N = m8130do("measurement.sgtm.upload_queue", bool, new C0820cd(17), false);
        O = m8130do("measurement.sgtm.google_signal.enable", bool, new LQ(i7), false);
        P = m8130do("measurement.gmscore_feature_tracking", bool2, new CQ(13), false);
        Q = m8130do("measurement.gmscore_client_telemetry", bool, new C0570Vq(i13), false);
        R = m8130do("measurement.gmscore_network_migration", bool, new Gy(14), false);
        final int i15 = 13;
        S = m8130do("measurement.fix_health_monitor_stack_trace", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i15) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, true);
        T = m8130do("measurement.rb.attribution.service", bool2, new CQ(i3), true);
        U = m8130do("measurement.rb.attribution.client2", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, true);
        V = m8130do("measurement.rb.attribution.uuid_generation", bool2, new C0570Vq(3), false);
        W = m8130do("measurement.rb.attribution.enable_trigger_redaction", bool2, new C0189Ei(i3), false);
        m8130do("measurement.rb.attribution.followup1.service", bool, new HQ(0), false);
        X = m8130do("measurement.rb.attribution.retry_disposition", bool, new C0820cd(i9), false);
        Y = m8130do("measurement.rb.attribution.ad_campaign_info", bool, new LQ(i3), false);
        final int i16 = 1;
        Z = m8130do("measurement.rb.attribution.improved_retry", bool2, new QJ(2), true);
        a0 = m8130do("measurement.client.sessions.enable_fix_background_engagement", bool, new C0570Vq(4), false);
        b0 = m8130do("measurement.client.sessions.enable_pause_engagement_in_background", bool2, new HQ(1), false);
        c0 = m8130do("measurement.dma_consent.service_dcu_event2", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i16) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        d0 = m8130do("measurement.dma_consent.services_database_update_fix", bool2, new C0820cd(6), false);
        e0 = m8130do("measurement.dma_consent.setting_npa_inline_fix", bool2, new C0189Ei(i16), false);
        f0 = m8130do("measurement.gbraid_campaign.gbraid.client", bool2, new CQ(2), true);
        g0 = m8130do("measurement.gbraid_campaign.gbraid.service", bool2, new QJ(3), true);
        h0 = m8130do("measurement.service.consent.pfo_on_fx", bool2, new C0570Vq(i9), false);
        i0 = m8130do("measurement.service.consent.params_on_fx", bool2, new Gy(3), false);
        j0 = m8130do("measurement.consent.stop_reset_on_storage_denied.client", bool2, new C0570Vq(6), true);
        k0 = m8130do("measurement.consent.stop_reset_on_storage_denied.service", bool2, new C0820cd(i10), true);
        l0 = m8130do("measurement.consent.scrub_audience_data_analytics_consent", bool2, new C0820cd(i8), false);
        m0 = m8130do("measurement.consent.fix_first_open_count_from_snapshot", bool2, new C0570Vq(i8), false);
        n0 = m8130do("measurement.fix_engagement_on_reset_analytics_data", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i7) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        o0 = m8130do("measurement.rb.attribution.service.bundle_on_backgrounded", bool2, new C0820cd(14), false);
        final int i17 = 12;
        p0 = m8130do("measurement.rb.attribution.client.bundle_on_backgrounded", bool2, new QJ(i17), false);
        q0 = m8130do("measurement.set_default_event_parameters_propagate_clear.service.dev", bool, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i17) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        r0 = m8130do("measurement.set_default_event_parameters_propagate_clear.client.dev", bool, new Gy(1), false);
        s0 = m8130do("measurement.set_default_event_parameters_with_backfill.service", bool, new Gy(2), false);
        m8130do("measurement.set_default_event_parameters_with_backfill.client.dev", bool, new LQ(1), false);
        t0 = m8130do("measurement.defensively_copy_bundles_validate_default_params", bool2, new C0189Ei(2), false);
        u0 = m8130do("measurement.fix_origin_in_upload_utils.service", bool2, new QJ(4), false);
        m8130do("measurement.chimera.parameter.service", bool2, new C0820cd(i5), false);
        v0 = m8130do("measurement.service.ad_impression.convert_value_to_double", bool2, new Gy(4), false);
        final int i18 = 3;
        w0 = m8130do("measurement.persisted_config_defensive_copies", bool, new CQ(i18), false);
        m8130do("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", bool2, new RR() { // from class: GQ
            @Override // defpackage.RR
            public final Object zza() {
                switch (i18) {
                    case 0:
                        return Boolean.valueOf(zzpn.zze());
                    case 1:
                        return Boolean.valueOf(zznx.zzb());
                    case 2:
                        return Integer.valueOf((int) zzng.zzaj());
                    case 3:
                        return Boolean.valueOf(zzpn.zzg());
                    case 4:
                        return Long.valueOf(zzng.zzaq());
                    case 5:
                        return Long.valueOf(zzng.zzx());
                    case 6:
                        return Long.valueOf(zzng.zzal());
                    case 7:
                        return Long.valueOf(zzng.zzd());
                    case 8:
                        return Boolean.valueOf(zzoj.zza());
                    case 9:
                        return Long.valueOf(zzng.zzf());
                    case 10:
                        return Boolean.valueOf(zzng.zzbe());
                    case 11:
                        return Boolean.valueOf(zzqa.zza());
                    case 12:
                        return Boolean.valueOf(zzns.zzb());
                    default:
                        return Boolean.valueOf(zzok.zzb());
                }
            }
        }, false);
        x0 = m8130do("measurement.currency.escape_underscore_fix", bool2, new C0189Ei(i18), false);
    }

    /* renamed from: do, reason: not valid java name */
    public static SR m8130do(String str, Object obj, RR rr, boolean z2) {
        SR<?> sr = new SR<>(str, obj, rr);
        if (z2) {
            f15460do.add(sr);
        }
        return sr;
    }
}
