class Eratos
  def self.prime(n)
    # 2から引数で与えられた数までを素数候補として初期化
    candidates = (2..n).to_a # 素数候補リスト
    primes = [] # 素数リスト

    # 2からnの平方根までの値の倍数を順に候補から除外する
    max_candidate = Math.sqrt(n)
    begin
      e = candidates.shift # 候補リストの先頭をpop
      primes << e # 素数リストに追加
      candidates.reject!{|target| target % e == 0} # 候補から素数の倍数を除去
    end while candidates.first < max_candidate # 判定対象の数の平方根に達するまで繰り返す

    # この時点まで残った候補を素数リストに追加
    primes << candidates

    # 素数リストをカンマ区切りのテキストとしてreturnする
    primes.to_s.gsub!(']','').gsub!('[','')
  end
end

########
# MAIN
########
if ARGV.size == 1
  puts Eratos.prime(ARGV[0].to_i)
end

