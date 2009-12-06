  #optional to leave in file and load at runtime
  f = File.open("irregularverbs.txt")
  infinitives = {}
  f.each_line do |line|
    pieces = line.split(" ")
    infinitive = pieces[0] 
    person = pieces[1]
    tense = pieces[2]
    conjugation = pieces[3]
    if infinitives.include? infinitive
      if infinitives[infinitive].include? person
        infinitives[infinitive][person].merge!({tense => conjugation})
      else
        infinitives[infinitive].merge!({person => {tense => conjugation} })
      end
    else
      infinitives[infinitive] = {person => {tense => conjugation} }    
    end
  end
  infinitives.to_s
